require "pathname"
require "certifi/version"

module Certifi
  def self.where
    Pathname.new(File.join(File.dirname(__FILE__), "certifi/vendor/cacert.pem"))
  end
end
