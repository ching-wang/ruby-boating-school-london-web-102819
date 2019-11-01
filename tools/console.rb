require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

### test for student ####
s1 = Student.new("Mattew")
s2 = Student.new("Qing")
s3 = Student.new("Gordy")
s4 = Student.new("John")


ins1 = Instructor.new("Mr.Smith")
ins2 = Instructor.new("Ms.Lee")
ins3 = Instructor.new("Ms. Jill")
ins4 = Instructor.new("Mr. Tian")

BoatingTest.new("mo1", "failed", s1, ins1)
BoatingTest.new("mo2", "failed", s2, ins1)
BoatingTest.new("mo3", "passed", s2, ins2)
BoatingTest.new("mo4", "passed", s3, ins3)
BoatingTest.new("mo5", "failed", s4, ins4)
BoatingTest.new("mo3", "passed", s1, ins4)
BoatingTest.new("mo5", "failed", s2, ins4)
BoatingTest.new("mo4", "passed", s1, ins4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

