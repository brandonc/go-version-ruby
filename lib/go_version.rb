require "go_version/version"
require "go_version/wrapper"
require "go_version/constraint"

module GoVersion
  def self.valid?(s)
    Wrapper.ValidVersion(s)
  end

  def self.valid_strict?(s)
    Wrapper.ValidSemver(s)
  end

  def self.compare(a, b)
    Wrapper.Compare(a, b)
  end
end
