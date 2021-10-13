require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    ffi_lib "./go-version.so"
    attach_function :Satisfies, [:string, :string], :bool
  end
end
