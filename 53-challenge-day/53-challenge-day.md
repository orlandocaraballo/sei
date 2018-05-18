<img src="brace_yourself.jpg" width="100%">

# Brace Yourself

Consider today a challenge day. I have created two very lengthy problem sets, with extra challenging sections, for you to solve. This is designed to be difficult so do not give up. Try to do the ones that you feel most comfortable doing first and then doing the ones you find more difficult. This puts together several complex topics we have spoken about several times in the past. Good luck!

## Javascript

Create two functions:
- `downsortEvenly`:
  - accepts 2 arguments:
    - `array` - stores an array of integers
    - `count` - the amount of elements to return
  - returns an array of length `count` sorted from largest to smallest of only **even** elements
  - if `count` is greater than the total available even numbers then return the max amount of even numbers
- `downsortOddly`
  - accepts 2 arguments:
    - `array` - stores an array of integers
    - `count` - the amount of elements to return
  - returns an array of length `count` sorted from largest to smallest of only **odd** elements
  - if `count` is greater than the total available even numbers then return the max amount of odd numbers

Example

```js
array = [2, 3, 14, 3, 9, 22]
downsortEvenly(array, 3) // [22, 14, 2]
downsortEvenly(array, 10) // [22, 14, 2]
downsortOddly(array, 2) // [9, 3]
```

### Challenge

Create one more function:
- `unpack`:
  - accepts one argument:
    - `array` - stores an array of strings and integers
  - returns an object literal with 2 keys:
    - `strings`:
      - stores a function that returns all strings from the array when invoked
    - `integers`:
      - stores a function that returns all integers from the array when invoked

Example

```js
literal = unpack(["hello", "world", 1, "cat", "dog", 4])
literal.strings() // ["hello", "world", "cat", "dog"]
literal.integers() // [1, 4]
```

## Ruby

Create a class `Track` with the following features:
- it has 3 instance variables:
  - `name` - stores the name of the track
  - `artist` - stores the name of the artist who made the track
  - `length` - stores the length of the track (in [min]:[seconds] format)
  - all 3 of these instance variables should be readable and writeable outside of the class

Create a class `Playlist` with the following features:
- it has 2 instance variable:
  - `name` - the name of the playlist
  - `tracks`:
    - stores `Track` objects
    - is an empty array by default
  - none of these instance variables should be readable nor writeable outside of the class
- it has 3 methods:
  - `add_track`:
    - accepts one argument that is a `Track` object
    - should add a new track to the `tracks` array
  - `add_album`:
    - accepts one argument of type `Album`
    - should add all tracks of the album to the end of the `tracks` array
  - `play_track`:
    - accepts one integer argument named `index`
    - displays the text "Now playing [track id] - [track name] by [artist], [length]" to the terminal
      - note: because we are dealing with an album, all indexes start at 1
  - `shuffle`:
    - accepts no aguments
    - should randomize the order of the elements in the `tracks` array
  

Create a class `Album` with the following features:
- it has 2 instance variables:
  - `name` - the name of the album
  - `tracks`:
    - stores `Track` objects
    - is an empty array by default
  - this instance variable should not be readable or writeable outside of the class
- it has 2 methods:
  - `add_track`:
    - accepts one argument that is a `Track` object
    - should add a new track to the `tracks` array
  - `get_track`:
    - accepts one integer argument named `index`
    - returns a `Track` object based on its index
      - note: because we are dealing with an album, all indexes start at 1
  - `get_tracks`:
    - accepts no arguments
    - return the array of tracks
  
Example

```ruby
# create our containers
playlist = Playlist.new("dope jams")
album = Album.new("along came joyner")

# add all the tracks to our album
album.add_track(Track.new("all over", "joyner lucas", "4:43"))
album.add_track(Track.new("opposites attract", "joyner lucas", "4:33"))
album.add_track(Track.new("ross capichionni", "joyner lucas", "7:40"))

# add tracks and an album to our playlist
playlist.add_album(album)
playlist.add_track(Track.new("44 bars", "logic", "3:02"))

# play some tracks
playlist.play_track(1) # Now playing 1 - all over by joyner lucas, 4:43
playlist.play_track(4) # Now playing 4 - 44 bars by logic, 3:02
```

### Challenge

Try adding some more behavior to the `Playlist` class:
- is has the following instance variable:
  - `current_track_index`:
    - stores an integer that represents the current track index to be played
    - should be `0` by default
- `play_current_track`:
  - accepts no arguments
  - displays the text "Now playing [track name] by [artist] for [length] " to the terminal
    - note: because we are dealing with an album, all indexes start at 1
- `next_track`:
  - move the `current_track_index` up by 1
  - note: `current_track_index` cannot be greater than the size of the length of the array
- `previous_track`:
  - move the `current_track_index` down by 1
  - note: `current_track_index` cannot be less than 0

Example

```ruby
# create our containers
playlist = Playlist.new("dope jams")
album = Album.new("along came joyner")

# add all the tracks to our album
album.add_track(Track.new("all over", "joyner lucas", "4:43"))
album.add_track(Track.new("opposites attract", "joyner lucas", "4:33"))
album.add_track(Track.new("ross capichionni", "joyner lucas", "7:40"))

# add tracks and an album to our playlist
playlist.add_album(album)
playlist.add_track(Track.new("44 bars", "logic", "3:02"))

# test to see that our playlist movement works
playlist.play_current_track # Now playing 1 - all over by joyner lucas, 4:43
playlist.next_track
playlist.next_track

playlist.play_current_track # Now playing 3 - ross capichionni by joyner lucas, 7:40

playlist.previous_track
playlist.play_current_track # Now playing 2 - opposites attract by joyner lucas, 4:33
```