lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "go_version/version"

Gem::Specification.new do |s|
  s.name        = "go_version"
  s.version     = GoVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Ruby bindings for the hashicorp/go-version lib."
  s.description = "Wraps native go-version in a ruby library for deep compatibility."
  s.authors     = ["Brandon Croft"]
  s.email       = "brandon.croft@gmail.com"
  s.files       = Dir["ext/**/*", "lib/**/*.rb", "README.md", "LICENSE", "CHANGELOG.md"]
  s.require_paths = "lib"
  s.required_ruby_version = ">= 2.5"

  s.homepage    = "https://github.com/brandonc/go-version-ruby"
  s.license     = "MPL-2.0"

  s.extensions = %w[ext/extconf.rb]

  s.add_runtime_dependency "ffi", "~> 1.15"
  s.add_development_dependency "minitest", "~> 5.24"
  s.add_development_dependency "rake", "~> 13.2"
end
