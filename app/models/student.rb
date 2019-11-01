class Student
  attr_reader :first_name

  @@all = []
  def initialize(first_name)
    @first_name =first_name
    @@all << self
  end

  def self.all
    @@all
  end

  #(testname, teststatus, student, instructor)
  #add_boating_test should initialize a new boating test with a Student (Object), 
  #a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(testname, teststatus, instructor)
    BoatingTest.new(testname, teststatus, self, instructor)
  end

  #find_student will take in a first name and output the student (Object) with that name
  def self.find_student(student_name)
    Student.all.select {|s| s.name == student_name}
  end

  def tests
    BoatingTest.all.select {|s| s.student == self}
  end

  def test_pass
    tests.select {|t| t.teststatus == "pass"}
  end

  def test_fail
    tests.select {|t| t.teststatus == "fail"}
  end

  def grade_percentage
    (test_pass.size.to_f / tests.size) * 100
  end

end


=begin
should initialize with first_name
Student.all should return all of the student instances
Student#add_boating_test should initialize a new boating test with a Student (Object), 
a boating test name (String), a boating test status (String), and an Instructor (Object)
Student.find_student will take in a first name and output the student (Object) with that name
Student#grade_percentage should return the percentage of tests that the student has passed, a 
Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
=end