class Animal
  attr_accessor :height, :weight, :gender, :type

  def initialize(type:, height:, gender:, weight:)
    @type = type
    @height = height
    @gender = gender
    @weight = weight
  end
end