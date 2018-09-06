require 'sinatra'

# requires out classmate class
require_relative 'classmate'

# sets NAME constant to 'Diana"
NAME = 'Diana'

# sets students_info equal to an array of student info 
students_info = [
  "reynaldo steady hands", 
  "garth the time traveler",
  "franklin the no sleep machine",
  "pablo the low key senior dev",
  "richard who does it differently"
]

# creates several Classmate objects based on the class Classmate
garth  = Classmate.new('garth', 'sleeping in class!')
marlon = Classmate.new('marlon', 'mimicing')
kevin = Classmate.new('kevin', '[nods]')

# defines landing page
get '/' do
  # we can omit the return value because ruby automatically
  #   returns whatever is on the last line of a block / method / function
  return 'Hello human, are you ready for us robots to take over |8-D|'
end

# defines sei page
get '/sei' do
  # sends the following html
  '<h1>Diana is awesome!</h1>'
end

# defines diana page
get '/diana' do
  # sends the following html with NAME replaced with diana
  #   NAME is defined above
  "<h1>#{ NAME } is awesome!</h1>"
end

# defines students page
get '/students' do
  # sets the initial string for output to
  #   be a ul
  output = '<ul>'

  # loops thru every student and creates an 
  #   li with the value of student_info within the li
  students_info.each do |student_info|
    output += "<li>#{ student_info }</li>"
  end

  # closes the ul
  output + '</ul>'
end

# defines garth page
get '/garth' do
  # calls upon garth's power
  garth.i_have_the_power!
end

# defines garth page
get '/marlon' do
  # calls upon garth's power
  marlon.i_have_the_power!
end

# defines garth page
get '/kevin' do
  # calls upon garth's power
  kevin.i_have_the_power!
end