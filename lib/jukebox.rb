require"pry"
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
# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)



def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(song_array)
  song_hash={}
  song_array.each_with_index do |value, index|
    song_hash[index+1]=value
  end
  # binding.pry
  puts "Please enter a song name or number:"
  user_selection = gets.chomp

  current_song= song_hash.find do |key, value|
    user_selection == key.to_s || value == user_selection
  end

  # binding.pry
  if (current_song == nil)
    puts "Invalid input, please try again"
  else
    puts "Playing <#{current_song[1]}>"
  end
end
# play(songs)

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  loop do
    user_input = gets.chomp
    break if user_input=="exit"
    case user_input
    when "help"
      help()
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Incorrect Selection"
    end
  end
  exit_jukebox()
end
