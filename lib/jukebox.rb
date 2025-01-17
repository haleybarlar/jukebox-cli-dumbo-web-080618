require 'pry'

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
puts "I accept the following commands: 
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  count = 0
  while count < songs.length
  puts "#{count + 1}. #{songs[count]}"
  count += 1 
end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  songs.each_with_index do |song, index|
  if input.to_i == (index + 1) || input == song
    puts "Playing #{song}"
    break
  else
    puts "Invalid input, please try again"
    break
  end
  end
end
  
  def exit_jukebox
    puts "Goodbye"
  end
  
def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == "list"
    list
  elsif input == "play"
    play
  elsif input == "help"
    help
   elsif input == "exit"
    exit_jukebox
  end
end
