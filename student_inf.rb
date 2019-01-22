class Student

  attr_accessor :student_name, :cohort

  def initialize(input_name, input_cohort)
    @student_name = input_name
    @cohort = input_cohort
  end

  def get_name
    return @student_name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    return @student_name = new_name
  end

  def set_cohort (new_cohort)
    return @cohort = new_cohort
  end

  def get_talk
    return 'I can talk'
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end
