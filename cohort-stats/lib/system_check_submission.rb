require_relative "grade"
require 'pry'
class SystemCheckSubmission
  attr_reader :student, :grade
  attr_accessor :grade
  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = 0
    @submission = 0 + @grade

  end
  def solution
    "#{@solution}"
  end
  def assign_grade(grade)
    if 3 < grade || grade < 0
      raise InvalidGradeError
    else
      output = 0
      @grade += grade
     end
    #  binding.pry
    return grade
  end
  def graded?
  if  @grade == 0
    false
  else
    true
  end
end
end
class InvalidGradeError < StandardError
end
