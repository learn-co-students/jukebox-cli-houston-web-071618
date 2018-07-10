songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts " - help : displays this help message"
puts " - list : displays a list of songs you can play"
puts " - play : lets you choose a song to play"
puts " - exit : exits this program"
end
help

def list(songs_a)
counter = 0
songs_a.each do | song |
  counter +=1
  puts "#{counter}. #{song}"
end
end
list(songs)  

def play(songs_a)
puts "Please enter a song name or number:"
song_num = gets.chomp
song_num = song_num.to_i - 1
  if song_num < songs_a.length
    puts "Playing " + songs_a[song_num]
  elsif 
    puts "Invalid input, please try again."
  end  
end
play(songs)  