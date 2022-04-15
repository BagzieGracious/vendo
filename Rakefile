require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:task) do |t|
    t.libs << "test"
    t.libs << "lib"
    t.test_files = FileList["test/**/*_test.rb"]
end

task default: :test

task :console do
    exec "irb -I lib -r vendo.rb"
end
