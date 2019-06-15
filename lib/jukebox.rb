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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)

  valid_commands = []
  length = songs.length
  max_num = length
  numbers = *(1..max_num)
  numbers.map!(&:to_s)

  valid_commands = songs + numbers
  
  puts "Please enter a song name or number:"
  choice = gets.chomp
  
  if valid_commands.include?(choice)
    puts "Command is valid"
    if choice.length == 1
      choice = choice.to_i
      selection = songs[choice-1]
    else
      selection = choice
    end
    puts "Playing <#{selection}>"
  else
    puts "Invalid input, please try again."
  end

end #play

def list(songs) 
  songs.each_with_index do |title, index|
  puts "#{index+1}. #{title}"
  end
end #list

def exit_jukebox
  puts "Goodbye"
end #exit_jukebox

def run(songs) 
  #Show user available commands by calling help method
  help
  
  loop do 
    puts "Please enter a command:"
    value = gets.chomp
    
    case value
      when "help"
       help
      when "list"
       list(songs)
      when "play"
       play(songs)
      when "exit"
       exit_jukebox
       break
      else
       puts "Invalid command"
       puts "===================="
     end
    
  end #loop do
end # run
