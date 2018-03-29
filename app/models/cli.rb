


def hello
  puts "hello world"
end

def spaceship_image2

end

def spaceship_image1
puts  '      (=========)
      |=========|
      |====_====|
      |== / \ ==|
      |= / _ \ =|
   _  |=| ( ) |=|
  /=\ |=|     |=| /=\
  |=| |=|     |=| |=|
  |=| |=|  _  |=| |=|
  |=| |=| | | |=| |=|
  |=| |=| | | |=| |=|
  |=| |=| | | |=| |=|
  |=| |/  | |  \| |=|
  |=|/    | |    \|=|
  |=/NASA |_| NASA\=|
  |(_______________)|
  |=| |_|__|__|_| |=|
  |=|   ( ) ( )   |=|
 /===\           /===\
|||||||         |||||||
-------         -------
 (~~~)           (~~~)'
end

def menu
  available_choices = [1,2,3]
  greeting
  choice = 0
  while !available_choices.include?(choice)
    options
    puts list
    choice = gets.chomp.to_i
  end
  handle_tasks(choice)
end

def handle_tasks(num)

  case num

  when 1
    puts Pilot.all.map{|i| i.name}
  when 2
    puts Mission.all.map{|i| i.name}
  when 3
    puts Spacecraft.all.map{|i| i.name}
  end

end

def list
  "    1. See our list of Pilots
    2. View our Missions
    3. See our Spacecrafts"
end

def greeting
  puts '    __  ____           _                ______            __             __
   /  |/  (_)_________(_)___  ____     / ____/___  ____  / /__________  / /
  / /|_/ / / ___/ ___/ / __ \/ __ \   / /   / __ \/ __ \/ __/ ___/ __ \/ /
 / /  / / (__  |__  ) / /_/ / / / /  / /___/ /_/ / / / / /_/ /  / /_/ / /
/_/  /_/_/____/____/_/\____/_/ /_/   \____/\____/_/ /_/\__/_/   \____/_/
                                                                           '
  puts"Welcome to Mission Control\n"
end

def options
  puts "Please select from the following list:"
end
