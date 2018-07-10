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
# help

def list(songs_a)
counter = 0
songs_a.each do | song |
  counter +=1
  puts "#{counter}. #{song}"
end
end
# list(songs)  

def play(songs_a)
puts "Please enter a song name or number:"
song_pick = gets.chomp 
song_int = song_pick.to_i
song_int_array = Array (1..9)

    # is song name included in song_a array
    if songs_a.include?("#{song_pick}") == true      
    puts "Playing #{song_pick}"
 
    # is song num included in song int array
    elsif song_int_array.include?(song_int) == true
    puts "Playing " + songs_a[song_int - 1]

    # elsif song_int_array.include?(song_int) == false || songs_a.include?("#{song_pick}") == false
  else
    puts "Invalid input, please try again."
  end  
end
# play(songs)  

def exit_jukebox
puts "Goodbye"
end

def run(songs_a)
puts "Please enter a command:"
user_command = gets.chomp
  if user_command == "exit"
    exit_jukebox
  elsif user_command == "list"
    list(songs_a)
    run(songs_a)
  elsif user_command == "play"
    play(songs_a)
    run(songs_a)
  elsif user_command =="help"
    help
    run(songs_a)
  end
end  
# run(songs)

