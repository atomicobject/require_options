require 'spec/rake/spectask'

task :default => :spec

Spec::Rake::SpecTask.new do |t|
  t.spec_files = "spec/**/*_spec.rb"
  t.spec_opts = ["-f s -c"]
end