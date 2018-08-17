require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

JAVA_FILES = Rake::FileList.new("java/**/*.java")

task :default => :build_java

directory 'lib/rubyfx/classes'

task :build_java => [*JAVA_FILES, 'lib/rubyfx/classes'] do
  sh "javac #{JAVA_FILES} -d lib/rubyfx/classes"
end