require "bundler/gem_tasks"
require "net/http"

PEM_PATH   = File.expand_path(File.join(__FILE__, "../lib/certifi/vendor/cacert.pem"))
MKCERT_URL = "https://mkcert.org/generate/"

begin
  require 'rspec/core/rake_task'

  desc "Run specs"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = %w(-fs --color)
    #t.ruby_opts  = %w(-w)
  end
  task :default => :spec
rescue LoadError => e
  # rspec won't exist on production
end

task :update do
  File.open(PEM_PATH, "w") do |f|
    f.write(Net::HTTP.get(URI.parse(MKCERT_URL)))
  end
end
