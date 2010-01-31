require 'spec/rake/spectask'

task :default => :spec

Spec::Rake::SpecTask.new do |t|
  t.spec_files = "spec/**/*_spec.rb"
  t.spec_opts = ["-f s -c"]
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
