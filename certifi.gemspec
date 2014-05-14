# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'certifi/version'

Gem::Specification.new do |spec|
  spec.name          = "certifi"
  spec.version       = Certifi::VERSION
  spec.authors       = ["Kenneth Reitz", "Terence Lee"]
  spec.email         = ["me@kennethreitz.org", "hone02@gmail.com"]
  spec.summary       = %q{Rubygem for providing Mozilla's CA Bundle}
  spec.description   = %q{Rubygem for providing Mozilla's CA Bundle}
  spec.homepage      = "http://certifi.io/"
  spec.license       = "MPL2.0"

  spec.files         = [
                         ".gitignore",
                         "Gemfile",
                         "LICENSE.txt",
                         "README.md",
                         "Rakefile",
                         "certifi.gemspec",
                         "lib/certifi.rb",
                         "lib/certifi/version.rb",
                         "lib/certifi/vendor/cacert.pem",
                         "spec/certifi_spec.rb",
                         "spec/spec_helper.rb"
                       ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-core"
  spec.add_development_dependency "rspec-expectations"
end
