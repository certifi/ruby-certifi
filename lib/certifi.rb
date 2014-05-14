require "certifi/version"

module Certifi
  def self.where
    File.expand_path(File.join(File.dirname(__FILE__), "certifi/vendor/cacert.pem"))
  end
end
