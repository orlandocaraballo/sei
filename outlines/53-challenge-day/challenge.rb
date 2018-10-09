class Track
  attr_accessor :name, :artist, :length

  def initialize(name, artist, length)
    @name = name
    @artist = artist
    @length = length
  end
end

class Playlist
  def initialize(name)
    @name = name
    @tracks = []
    @current_track_index = 0
  end

  def add_track(track)
    @tracks.push(track)
  end

  def add_album(album)
    album.get_tracks.each do |track|
      @tracks.push(track)
    end
  end

  def play_track(track_number)
    track = @tracks[track_number - 1]
    puts "Now Playing #{ track_number } - #{ track.name } - #{ track.artist }, #{ track.length }"
  end

  def shuffle
    @tracks.shuffle!
  end

  def next_track
    if @current_track_index < @tracks.length - 1
      @current_track_index += 1
    else
      @current_track_index = 0
    end
  end

  def previous_track
    if @current_track_index > 0
      @current_track_index -= 1
    else
      @current_track_index = @tracks.length - 1
    end
  end

  def play_current_track
    play_track(@current_track_index + 1)
  end
end

class Album
  def initialize(name)
    @name = name
    @tracks = []
  end

  def add_track(track)
    @tracks.push(track)
  end

  def get_track(track_number)
    @tracks[track_number - 1]
  end

  def get_tracks
    @tracks
  end
end

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