class Student
  attr_accessor :name, :cohort
  def initialize(name,cohort)
    @name=name
    @cohort=cohort
  end
  # def get_name():
  #   return @name
  # end
  #
  # def get_cohort():
  #   return @coach
  # end
  #
  # def set_name(name)
  #   @name=name
  # end
  #
  # def set_cohort(cohort)
  #   @cohort=cohort
  # end


  def talk()
    return "student talk yes good"
  end

  def favorite(program)
    return "I love #{program}"
  end

end
