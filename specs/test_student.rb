require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Mindy", "E42")
    assert_equal("Mindy", student.student_name_getter)
  end

  def test_cohort
    student = Student.new("Mindy", "E42")
    assert_equal("E42", student.cohort_getter)
  end

  def test_set_student_name
    student = Student.new("Mindy", "E42")
    student.set_student_name("Amy")
    assert_equal("Amy", student.student_name_getter)
  end

  def test_set_cohort
    student = student = Student.new("Mindy", "E42")
    student.set_student_cohort("E12")
    assert_equal("E12", student.cohort_getter)
  end

  def test_talks
    student = Student.new("Mindy", "E42")
    assert_equal("I can talk!", student.student_takls)
  end

  def test_favourite_language
    student = Student.new("Mindy", "E42")
    assert_equal("My favourite language is Ruby", student.say_favourite_language("Ruby"))
  end

end
