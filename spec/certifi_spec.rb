require_relative 'spec_helper'
require_relative '../lib/certifi'

describe Certifi do
  describe ".where" do
    it "should return the path to the cacert.pem" do
      expect(File.exist?(Certifi.where)).to be_true
    end

    it "should verify the cert" do
      uri  = URI.parse('https://httpbin.org/')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl     = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER
      http.ca_file     = Certifi.where
      http.start do
        http.request_get(uri.path) do |res|
          expect(res.response).to be_kind_of(Net::HTTPOK)
        end
      end
    end
  end
end
