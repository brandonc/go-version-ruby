

Gem::Specification.new do |s|
  s.name        = "go_version"
  s.version     = "1.3.0"
  s.summary     = "ruby bindings for the hashicorp/go-version lib"
  s.description = "wraps native go-version in a ruby library for compatibility"
  s.authors     = ["Brandon Croft"]
  s.email       = "bcroft@hashicorp.com"
  s.files       = Dir["{lib,ext}/**/*", "README.md"]
  s.homepage    = "https://rubygems.org/gems/go_version"
  s.license     = "MIT"

  s.extensions = %w[ext/go-version/extconf.rb]

  s.add_runtime_dependency "ffi", "~> 1.15"
  s.add_development_dependency "rake-compiler", "~> 1.1"
end
