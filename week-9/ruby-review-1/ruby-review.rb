# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
#Create a class called Song


# Initial Solution

class Song
  attr_accessor :song
  attr_accessor :band
  
  def initialize(song,band)
  @song = song
  @band = band
  end
  
  def play
    puts "Now playing #{@song} by #{band}"
  end
  
  
end

class Playlist
  def initialize(*song)
    @playlist = song
  end
  

  def add(*song)
    @playlist.concat(song)
  end
  
  def num_of_tracks
    @playlist.length
  end
  
  def remove(*songs)
    songs.each{|x| @playlist.delete(x)}
  end
  
  def includes?(song)
   if @playlist.include?(song)
     return true
     else
     return false
   end
  end
  
  def play_all
  @playlist.each{|x| x.play}
    
  end
  
  def display
    @playlist.each{|x| puts x.song}
  end
end

# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
# What concepts did you review in this challenge?
# I reviewed error messages and classes in this challenge.

# What is still confusing to you about Ruby?
# The splat operator was new to me in this challenge and I don't know all the nuances of it yet.


# What are you going to study to get more prepared for Phase 1?
# More about how classes work and look into inheritance.