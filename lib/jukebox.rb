require "pry"

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
  puts "- help : displyas this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if ("1".."8").to_a.include?(input)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    songs.each do |song|
      if song.include?(input)
        puts "Playing #{song}"
      end
    end
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each do |song|
    puts "#{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = nil
  until input == "exit"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
        play(songs)
      elsif input == "help"
        help
      elsif input == "exit"
        exit_jukebox
      else
        puts "Invalid input"
        help
      end
    end
end

run(songs)
