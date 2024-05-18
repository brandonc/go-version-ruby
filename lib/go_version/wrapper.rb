require "ffi"

module GoVersion
  module Wrapper
    extend FFI::Library

    begin
      ffi_lib File.join(File.expand_path(__dir__), "../../lib/go_version/go_version.bundle")
    rescue LoadError
      ffi_lib File.join(File.expand_path(__dir__), "../../ext/go_version/go_version.bundle")
    end
    attach_function :Check, [:string, :string], :bool
  end
end
