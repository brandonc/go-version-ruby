require "bundler"

Bundler::GemHelper.install_tasks
require "rake/extensiontask"

task :default => [:compile]

spec = eval File.read("go_version.gemspec")
Rake::ExtensionTask.new("go_version", spec) do |ext|
  ext.lib_dir = File.join(*["lib", "go_version", ENV["FAT_DIR"]].compact)
  ext.ext_dir = "ext/go-version"
  ext.source_pattern = "*.{c,cpp,go}"
end
