require "go_version/wrapper"
require "go_version/constraint"

module GoVersion
  def valid?(s)
    Wrapper.Valid(s)
  end

  def valid_strict?(s)
    Wrapper.ValidStrict(s)
  end
end
