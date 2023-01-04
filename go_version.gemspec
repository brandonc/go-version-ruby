

Gem::Specification.new do |s|
  s.name        = "go_version"
  s.version     = "1.6.0"
  s.summary     = "Ruby bindings for the hashicorp/go-version lib."
  s.description = "Wraps native go-version in a ruby library for deep compatibility."
  s.authors     = ["Brandon Croft"]
  s.email       = "bcroft@hashicorp.com"
  s.files       = Dir["{lib,ext}/**/*", "README.md"]
  s.homepage    = "https://github.com/brandonc/go-version-ruby"
  s.license     = "MIT"

  s.extensions = %w[ext/go-version/extconf.rb]

  s.add_runtime_dependency "ffi", "~> 1.15"
  s.add_development_dependency "rake-compiler", "~> 1.1"
end
