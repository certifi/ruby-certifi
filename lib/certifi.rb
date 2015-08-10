require "certifi/version"

module Certifi
  def self.where
    File.expand_path("certifi/vendor/cacert.pem", __dir__)
  end
end
