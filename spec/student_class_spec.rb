require("minitest/autorun")
require("minitest/rg")
require_relative("../student_class")

class TestStudentClass < Minitest::Test

  def setup
    @student = Student.new("raymond", "G8")
  end

  def test_student_getName
    assert_equal("raymond", @student.name)
  end

  def test_student_getCohort
    assert_equal("G8", @student.cohort)
  end

  def test_new_name
    @student.setName("anna")
    assert_equal("anna", @student.name)
  end

  def test_setCohort
    @student.setCohort("G7")
    assert_equal("G7", @student.cohort)
  end

  def test_talk
    assert_equal("I can talk", @student.talk)
  end

  def test_favLang
    assert_equal("I love Ruby", @student.favLang("Ruby"))
  end

end
