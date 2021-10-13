require "ffi"

module GoVersion
  extend FFI::Library
  ffi_lib "./go-version.so"
  attach_function :Satisfies, [:string, :string], :bool
end
