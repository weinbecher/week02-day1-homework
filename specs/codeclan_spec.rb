require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan')

class TestCodeClan < MiniTest::Test

def test_get_name
   student = CodeClan.new("Sophia","E35")
   assert_equal("Sophia", student.name)
end


def test_get_cohort
   student = CodeClan.new("Sophia","E35")
   assert_equal("E35", student.cohort)
end


def test_set_name
  student = CodeClan.new("Sophia","E35")
  student.name = "Catrin"
  assert_equal("Catrin", student.name)
end

def test_set_cohort
  student = CodeClan.new("Sophia","E35")
  student.cohort = "E34"
  assert_equal("E34", student.cohort)
end


def test_student_talk
  student = CodeClan.new("Sophia","E35")
  assert_equal("I can talk!",   student.student_talk
)
end

def test_favourite_language
  student = CodeClan.new("Sophia","E35")
  assert_equal("I love Ruby",   student.favourite_language("Ruby")
)
end


end
