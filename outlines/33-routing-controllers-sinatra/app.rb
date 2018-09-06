require 'sinatra'
require 'httparty'
require_relative 'student'

students = [
  Student.new('rich', 'sei'), # 0
  Student.new('anna', 'sei'), # 1
  Student.new('garth', 'sei'), # 2
  Student.new('pablo', 'sei'), # 3
  Student.new('diana', 'sei') # 4
]

get '/' do
  'Go to <a href="/students">students</a> page'
end

get '/students' do
  output = '<ul>'

  students.each_with_index do |student, index|
    output += "
    <li id='#{ student.name.downcase }'>
      Student: #{ student.name }
      Course: #{ student.course }
      Link to Student Page: <a href='/students/#{ index }'>students</a>
    </li>
    "
  end

  output + '</ul>'
end

# get '/students/:id' do
#   content_type :json

#   HTTParty.get("https://sei-api.herokuapp.com/students/#{ params[:id] }")
# end

get '/students/:id' do
  index = params[:id].to_i

  student = students[index]
  return "<h1 id='#{ params[:id] }'>Student Page</h1> Student name: #{ student.name }"
end

get '/form' do
  "
    <form method='GET' action='/find-student-by-id'>
      <input type='text' name='id' />
      <input type='submit' />
    </form>
  "
end

get '/find-student-by-id' do
  index = params[:id].to_i
  student = students[index]
  student.name
  # load user from database
end

get '/sign-in' do
  "
    <form method='POST' action='/sign-in'>
      <input type='text' name='username' placeholder='Username' />
      <input type='password' name='password' placeholder='Password' />
      <input type='submit' />
    </form>
  "
end

post '/sign-in' do
  # params.inspect
  
  # log the person in

  redirect '/thank-you'
end

get '/thank-you' do
  '
    <style>
      h1 { color: red; }
    </style>
    <h1>Thank you for logging in<h1>
  '
end