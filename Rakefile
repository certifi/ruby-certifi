lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'certifi'
require 'bundler/gem_tasks'
require 'net/http'

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

task :update => [:update_pem, :update_version]

task :update_pem do
  File.open(Certifi.where, 'w') do |f|
    f.write(Net::HTTP.get(URI.parse('https://mkcert.org/generate/')))
  end
end

task :update_version do
  File.open(Certifi::VERSION_PATH, 'w') do |f|
    f.write(Time.now.strftime('%Y-%m-%d'))
  end
end
