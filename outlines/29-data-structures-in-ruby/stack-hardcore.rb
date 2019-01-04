class Stack
  def initialize
    # the array we are using to store the stack elements
    @items = []

    # the amount of items currently in the array
    @count = 0
  end

  # add new element onto the stack
  def push(element)
    # get the current length of array
    #   because we will be using it several times
    current_length = @items.length

    # check if stack is empty
    if @count == 0
      # if so create array with size 1
      @items = Array.new(1)
    elsif @count == current_length
      # if stack is not empty then double size of array
      new_array = Array.new(current_length * 2)

      # copy old array onto new array
      @items.each_with_index do |item, i|
        new_array[i] = item
      end

      # set items to new_array
      @items = new_array
    end

    # set last element to element added
    @items[@count] = element

    # add 1 to the count
    @count += 1
  end

  # remove last item and return
  def pop
    if @count > 0
      last_item_index = @count - 1

      # stores last element
      last_item = @items[last_item_index]

      # remove last item from array
      @items[last_item_index] = nil

      # reduces size by 1
      @count -= 1

      last_item
    else
      raise "There are no items in the stack"
    end
  end

  # displays element on top of stack
  def peek
    if @count > 0
      @items[@count - 1]
    else
      raise "There are no items in the stack"
    end
  end

  # checks if stack is empty
  def empty?
    @count == 0
  end

  # returns every element as a string
  def show
    @items.to_s
  end
end

# create new stack
new_stack = Stack.new

new_stack.pop

# check if stack is empty
puts new_stack.empty?

# push new items onto the stack
new_stack.push(-9)
new_stack.push(8)

# remove last items and display to terminal
puts new_stack.pop
# puts new_stack.pop

puts new_stack.show


# push new items onto the stack
new_stack.push(4)
new_stack.push(2)
# new_stack.push(-987)
# new_stack.push(-888)
# new_stack.push(9000)
# new_stack.push(3)
# new_stack.push(-1)
# new_stack.push(4)
# new_stack.push(3)


# show last item
# puts new_stack.peek

# check if empty
# puts new_stack.empty?

# display entire stack
puts new_stack.show