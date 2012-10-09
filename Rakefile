require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  # t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "require_options"
    s.summary = "Simply extract named arguments from a hash.  Require or allow a set of keys."
    s.description = "Simply extract named arguments from a hash.  Require or allow a set of keys."
    s.email = "github@atomicobject.com"
    s.homepage = "http://github.com/atomicobject/require_options"
    s.authors = ["Atomic Object"]
    s.executables = []
    s.files =  FileList["lib/**/*.rb", "LICENSE", "Rakefile"]
    s.test_files = FileList["spec/**/*.rb"]
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
