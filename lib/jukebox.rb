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

def help #works
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs) # works
 songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
end

def play(songs)
  # remember to call a gets.chomp
  # remember that songs list starts at 1, but array index starts at 0 
  # remember dealing with integers and arrays
  puts "Please enter a song name or number:"
  user_song_choice = gets.strip
  if (1..9).to_a.include?(user_song_choice.to_i) 
    puts "Playing #{songs[user_song_choice.to_i - 1]}" #
  elsif songs.include?(user_song_choice)
    puts "Playing #{user_song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox #works
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  help
  while user_response
    puts "Please enter a command:"
    user_response = gets.chomp
    case user_response
    when 'play' then play(songs)
    when 'list' then list(songs)
    when 'help' then help
    when 'exit' then exit_jukebox
      break
  else
    help
  end
end
end
  

  
  
    