require "bundler"

Bundler::GemHelper.install_tasks
require "rake/testtask"

GEMSPEC = Bundler.load_gemspec("go_version.gemspec")

Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.pattern = 'test/test_*.rb'
end

task :default => :test
