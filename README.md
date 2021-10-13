# go-version-ruby

Ruby bindings for [hashicorp/go-version](https://github.com/hashicorp/go-version)

### Why?

This can be useful when you want to match the exact behavior of go-version from a ruby app.

### Prerequisites

go 1.16+

### Installing

`gem install go_version`

### Usage

```ruby
require 'go_version'

constraint = GoVersion::Constraint.new("> 1.0.0")
constraint.satisfies?("1.1.0") # true
constraint.satisfies?("1.0.0") # false
```
