class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def render
    "<li>
      <strong>#{ @name }</strong>
      <em>#{ @age }</em>
    </li>"
  end
end