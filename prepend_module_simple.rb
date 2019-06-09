module TimeManager
  def do_homework
    p 'Doing homework...'

    sleep 10

    p 'Process finished!!!'
  end
end

class Student
  prepend TimeManager

  def do_homework
    p 'Will not be executed'
  end
end

Student.new.do_homework
# "Doing homework..."
# NOTE: process will be paused on 10 seconds
# "Process finished!!!"

Student.ancestors
# => [TimeManager, Student, Object, Kernel, BasicObject]
