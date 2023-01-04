# go-version-ruby

Ruby bindings for [hashicorp/go-version](https://github.com/hashicorp/go-version). Versions correspond to underlying go-version release versions.

### Why?

This can be useful when you want to match the exact behavior of go-version from a ruby app.

### Prerequisites

go 1.17

### Installing

`gem install go_version`

### Usage

```ruby
require 'go_version'

constraint = GoVersion::Constraint.new("> 1.0.0")
constraint.check("1.1.0") # true
constraint.check("1.0.0") # false
```
