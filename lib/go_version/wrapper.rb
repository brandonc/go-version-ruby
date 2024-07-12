require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    # Requires rake compile or gem install
    ffi_lib "lib/go_version.so"

    attach_function :Check, [:string, :string], :bool
    attach_function :ValidVersion, [:string], :bool
    attach_function :ValidSemver, [:string], :bool
    attach_function :Compare, [:string, :string], :int
  end
end
