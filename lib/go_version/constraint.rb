module GoVersion
  class Constraint
    def initialize(constraint)
      @constraint = constraint
    end

    def check(version)
      Wrapper.Check(@constraint, version)
    end
  end
end
