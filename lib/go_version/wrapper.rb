require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    begin
      ffi_lib File.join(File.expand_path(__dir__), "go_version.bundle")
    rescue LoadError
      ffi_lib File.join(File.expand_path(__dir__), "go_version.so")
    end
    attach_function :Check, [:string, :string], :bool
    attach_function :Valid, [:string], :bool
    attach_function :ValidStrict, [:string], :bool
  end
end
