require('minitest/autorun')
require('minitest/rg')
require_relative('../student_inf')

class TestStudent < MiniTest::Test

  def setup
    @CCstudent = Student.new('Chika', 'e28')
  end

  def test_student_name
    assert_equal("Chika", @CCstudent.get_name())
  end

  def test_cohort
    assert_equal("e28", @CCstudent.get_cohort())
  end

  def test_set_name
    @CCstudent.student_name = 'John'
    assert_equal('John', @CCstudent.student_name())
  end

  def test_set_cohort
    @CCstudent.cohort = 'e27'
    assert_equal('e27', @CCstudent.cohort())
  end

  def test_talk
    assert_equal('I can talk', @CCstudent.get_talk())
  end

  def test_say_favourite_language
    assert_equal('I love Ruby', @CCstudent.say_favourite_language('Ruby'))
  end
end
