require "pry"
class SystemCheck
  attr_reader :submissions
  def initialize(name, due_date)
    @submissions = []
  end
def add_submission(submission)
  @submissions << submission
end
def did_student_complete_system_check?(name)
  # binding.pry
  if @submissions.include?(name) == true
    true
 else
   false
 end
 end
 end
binding.pry
