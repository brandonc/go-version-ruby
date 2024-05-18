require "go_version/wrapper"
require "go_version/constraint"

module GoVersion
  def self.valid?(s)
    Wrapper.Valid(s)
  end

  def self.valid_strict?(s)
    Wrapper.ValidStrict(s)
  end
end
