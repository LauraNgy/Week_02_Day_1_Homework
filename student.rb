class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name_getter
    return @student_name
  end

  def cohort_getter
    return @cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def student_takls
    return "I can talk!"
  end

  def say_favourite_language(lang)
    return "My favourite language is #{lang}"
  end
end
