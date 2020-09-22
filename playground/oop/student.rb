class Student
  attr_accessor :first_name, :last_name

  @first_name
  @last_name
  @email
  @user_name
  @password

  def initialize(first_name, last_name, email, user_name)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @user_name = user_name
    @password = "<CHANGE ME>"
  end

  def to_s
    "Fist name: #{@first_name}, #{@password}, #{last_name}"
  end

end

luke = Student.new "Lukasz", "Any", "luke@example.com", "luke"
puts luke
luke.first_name = "Lukas"
puts luke
