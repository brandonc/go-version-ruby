# go-version-ruby

Ruby bindings for [hashicorp/go-version](https://github.com/hashicorp/go-version). Versions correspond to underlying go-version release versions.

### Why?

This can be useful when you want to match the exact behavior of go-version from a ruby app.

### Prerequisites

- go 1.22

You need `go` to build the native extension for this gem. [Download and install go 1.22+](https://go.dev/doc/install) before installing this gem.

### Installing

`gem install go_version`

### Usage

1. Using a constraint to check individual versions

```ruby
require 'go_version'

constraint = GoVersion::Constraint.new("> 1.0.0")
constraint.check("1.1.0") # true
constraint.check("1.0.0") # false
```

2. Checking if a version string is valid

```ruby
require 'go_version'

GoVersion.valid?("1.1.0") # true
```

3. Compare two versions

```ruby
require 'go_version'

GoVersion.compare("1.2.0", "1.2.1") # -1
```
