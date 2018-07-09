#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {  
  "Go Go GO" => '/jukebox-cli-houston-web-071618/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '< path to this directory >/jukebox-cli-houston-web-071618/audio/Emerald-Park/02.mp3',
   "Hamburg" =>  '< path to this directory >/jukebox-cli-houston-web-071618/audio/Emerald-Park/03.mp3',
   "Guiding Light" => '< path to this directory >/jjukebox-cli-houston-web-071618/audio/Emerald-Park/04.mp3',
   "Wolf" => '< path to this directory >/jukebox-cli-houston-web-071618/audio/Emerald-Park/05.mp3',
   "Blue" => '< path to this directory >/jukebox-cli-houston-web-071618/audio/Emerald-Park/06.mp3',
   "Graduation Failed" => '< path to this directory >/jukebox-cli-houston-web-071618/audio/Emerald-Park/07.mp3'
}

def help #works
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each_with_index { |song, i| puts "#{i+1}. #{song}" }
end

def play(my_songs) #works
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  user_song_choice = gets.strip
  if !my_songs.keys.include?(user_song_choice)
    puts "Invalid input, please try again"
  else 
    puts "Now playing #{user_song_choice}"
    system 'open ' << my_songs[user_song_choice]
  end
end

def exit_jukebox #works
  puts "Goodbye"
end

def run(my_ongs)  #did not open song but it tried to
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

