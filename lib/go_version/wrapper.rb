require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    ffi_lib File.join(File.expand_path(__dir__), "../../ext/go-version/go_version.bundle")
    attach_function :Satisfies, [:string, :string], :bool
  end
end
