require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    ffi_lib File.combine(Dir.expand_path(__file__), "../../ext/go-version/go_version.bundle")
    attach_function :Satisfies, [:string, :string], :bool
  end
end
