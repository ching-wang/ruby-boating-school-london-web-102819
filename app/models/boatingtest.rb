class BoatingTest
  attr_reader :testname, :student, :instructor
  attr_accessor :teststatus
  @@all = []

  def initialize(testname, teststatus = nil, student, instructor)
    @testname = testname
    @teststatus = teststatus
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end

=begin
`BoatingTest` class:
* should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
* `BoatingTest.all` returns an array of all boating tests
=end