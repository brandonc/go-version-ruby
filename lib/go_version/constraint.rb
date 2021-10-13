module GoVersion
  class Constraint
    def initialize(constraint)
      @constraint = constraint
    end

    def satisfies?(version)
      Wrapper.Satisfies(@constraint, version)
    end
  end
end
