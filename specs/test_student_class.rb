require('minitest/autorun');
require('minitest/reporters');

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new;

require_relative('../studentclass.rb');


class FunctionsTest < MiniTest::Test;
  def test_talk
    new_student=Student.new("Matthew","G19")
    words=new_student.talk()

    assert_equal("student talk yes good",words)
  end
  def test_favorite
    new_student=Student.new("Matthew","G19")
    words=new_student.favorite("Java")

    assert_equal("I love Java",words)

  end

  def test_set_name
    new_student=Student.new("Matthew","G19")
    new_student.name="James"
    assert_equal("James",new_student.name)
  end

  def test_set_cohort
    new_student=Student.new("Matthew","G19")
    new_student.cohort="G18"
    assert_equal("G18",new_student.cohort)
  end




end
