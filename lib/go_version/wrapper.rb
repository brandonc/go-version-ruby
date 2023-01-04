require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    ffi_lib File.join(File.expand_path(__dir__), "go_version.bundle")
    attach_function :Check, [:string, :string], :bool
  end
end
