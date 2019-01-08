require "pry"
require "sinatra"
require_relative "classmate"

aron = Classmate.new("Aron", "Having one A in your name")
wonjun = Classmate.new("Wonjun", "Logic")
warren = Classmate.new("Warren", "Async master")
roig = Classmate.new("Roig", "Sound master")

# creates an array of all classmates / students
students = [aron, warren, roig, wonjun]

# we use the individual objects and store them as values
#   and the keys are the student names
students_hash = {
  aron: aron,
  warren: warren,
  roig: roig,
  wonjun: wonjun 
}

NAME = "Mohamed"

phrases = [
  "Mohamed is better than Goku and Vegeta",
  "Fausto has a daughter named Skylar",
  "Orlando is the real Mr. Robot",
  "Johnny is a true pokemon master and he drinks whiskey.. a lot of it, btw"
]

get "/" do
  "Hello human, are you ready for us robots to take over!? |8-D|"
end

get "/sei" do
  "Goku is the best!"
end

get "/my_name" do
  "Hello my name is #{ NAME }"
end

get "/student_facts" do
  output = ""

  for phrase in phrases do 
    output += "<li>#{ phrase }</li>"
  end

  "<ul>#{ output }</ul>"
end

get "/aron" do
  aron.i_have_the_power!
end

get "/wonjun" do
  wonjun.i_have_the_power!
end

get "/roig" do
  roig.i_have_the_power!
end

get "/warren" do
  warren.i_have_the_power!
end

get "/student_powers" do
  output = ""

  for student in students do
    output += student.i_have_the_power!
  end

  output
end

get "/student_powers/:name" do
  name_symbol = params[:name].to_sym
    
  if students_hash[name_symbol].nil?
    "Student not found"
  else
    students_hash[name_symbol].i_have_the_power!
  end
end