class Student
  def tell_story
    p 'Hey, I am studying at #Pivorak Summer Courses'
  end

  private

  def tell_secret
    p 'You know, I did my last homework ' \
      'during the last hour till the deadline'
  end
end

student = Student.new
# => #<Student:0x00007fcd77950320>

student.public_send(:tell_story)
# => "Hey, I am studying at #Pivorak Summer Courses"

student.public_send(:tell_secret)
# => NoMethodError (private method `tell_secret' called for
     #<Student:0x00007fcd77950320>

student.send(:tell_story)
# => "Hey, I am studying at #Pivorak Summer Courses"

student.send(:tell_secret)
# => "You know, I did my last homework during
#     the last hour till the deadline"
