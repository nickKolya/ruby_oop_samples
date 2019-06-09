require 'time'

module TimeManager
  def do_homework
    p "Process started at: #{current_time}"
    super
    p "Process finished at: #{current_time}"
  end

  private

  def current_time
    Time.now.strftime('%B %d, %H:%M')
  end
end

class Student
  prepend TimeManager

  def do_homework
    p 'Doing homework...'
    sleep 120
  end
end

student = Student.new
# => #<Student:0x00007f89a20dae98>

student.do_homework
# "Process started at: June 05, 17:23"
# "Doing homework..."
# "Process finished at: June 05, 17:25"
