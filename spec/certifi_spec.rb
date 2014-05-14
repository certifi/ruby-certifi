require_relative 'spec_helper'
require_relative '../lib/certifi'

describe Certifi do
  describe ".where" do
    it "should return the path to the cacert.pem" do
      expect(File.exist?(Certifi.where)).to be_true
    end
    end
  end
end
