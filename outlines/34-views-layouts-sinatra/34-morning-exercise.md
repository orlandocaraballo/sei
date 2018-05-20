# Morning Exercise

Recreate the `.each` behavior in ruby by creating a method on Array called `.far_each`. This method loops through all elements in an array and facilitates the ability for a user to have access to the current element of a loop on every iteration.
 
Here's how it would look like in javascript:

```js
Array.prototype.farEach = function(callback) {
  for(let i = 0; i < this.length ; ++i) {
    callback(this[i])
  }
}

let array = [1,2,3,4]

array.farEach(element => {
  console.log(element - 1)
}) 

/* 
  0
  1
  2
  3
*/
```

Here is some starter code for the ruby implementation:

```ruby
class Array
  def far_each
    # your implementation goes here
    #   remember you are being passed in a block
  end
end

[1,2,3,4].far_each do |element|
  puts element - 1
end

#  0
#  1
#  2
#  3
```