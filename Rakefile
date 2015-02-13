require "rake/testtask"
require "bundler/gem_tasks"

Rake::TestTask.new do |test|
  test.libs << "test" << "lib"
  test.pattern = "test/**/*_test.rb"
  test.verbose = true
end

task :ci => [:test]
task :default => [:test]
