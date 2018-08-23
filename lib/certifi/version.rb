module Certifi
  VERSION_PATH = File.expand_path(File.join(File.dirname(__FILE__), "VERSION"))
  VERSION      = File.read(VERSION_PATH)
end
