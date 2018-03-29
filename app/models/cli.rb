

def person(gender, country_of_origin)

  case gender

  when "M"
    puts '


                .#####.
                |_____|
               (\#/ \#/)
                |  U  |
                \  _  /
                 \___/
             .---:   :---.
            /   '+country_of_origin+'\
           /  |####|####|  \
          /  /\ ####### /\  \
         (  \  \  ###  /  /  )
          \  \  \_###_/  /  /
           \  \ |\   /| /  /
            :uuu| \_/ |uuu:
                |  |  |
                |  |  |
                |  |  |
                |  |  |
           dp   |  |  |
                )  |  (
              .oooO Oooo.
      '


  when "F"
    puts '           _____
    _._      |     |
  .:   :.    | '+country_of_origin+' |
 / //\\\ \   |_____|
( ( -\- ) )     |
 :-\_=_/-:      /)
.-:\   /:-.    (|/
/    :-:    \  / /
| \__   __/_/\/ /|
| |\     / \   /
\  \     \  :-:
`\/\     ;
 |/|\    |
 |       |
 |       |
 |       |
 |_______|
  |  |  |
   \ | /
   /=|=\
  (_/T\_):
  '

  end
end

def smallSpaceship
  puts '
|/\/\/\|                          _/**\_
| \  / |                         /      \
|__\/__|                       /          \
|  /\  |----------------------|     /\     |
| /  \ |                      |    /  \    |
|/    \|                      |   / __ \   |
|\    /|                      |  | (  ) |  |
| \  / |                      |  | (__) |  |
|__\/__|                 /\   |  |      |  |   /\
|  /\  |                /  \  |  |______|  |  /  \
| /  \ |               |----| |  |      |  | |----|
|/    \|---------------|    | | /|   .  |\ | |    |
|\    /|               |    | /  |   .  |  \ |    |
| \  / |               |    /    |   .  |    \    |
|__\/__|               |  /      |   .  |      \  |
|  /\  |---------------|/        |   .  |        \|
| /  \ |              /   NASA   |   .  |  NASA    \
|/    \|              (__________|______|___________)
|/\/\/\|               |____| |--|______|--| |____|
-------------------------/  \-----/  \/  \-----/  \--------
                       \\//     \\//\\//     \\//
                        \/       \/  \/       \/

  '


end

def largeSpaceship
  puts '
           /\
          //\\
         ||##||
        //##mm\\
       //##*mmm\\
      //###**mmm\\
     //###***nmmm\\
    //####***@nmmm\\
    ||####***@nnmm||
    ||####**@@@nnm||
    |______________|
    |              |
     \____________/
      |          |
     /|    /\    |\
    /_|    || /\ |_\
      |      NASA|
      |       \/ |
      |          |
     /|    /\    |\
    / |    ||    | \
   /  |    ||    |  \
  /  /\    ||    /\  \
 |__/  \   ||   /  \__|
   /____\      /____\
   |    |      |    |
   |    |______|    |
   |    | /--\ |    |
   |____|/----\|____|
    \||/ //##\\ \||/
    /##\//####\\/##\
   //##\\/####\//##\\
  ||/::\||/##\||/::\||
  \\\::///:**:\\\::///
   \\\///\::::/\\\///
    \\//\\\::///\\//
     \/\\\\..////\/
        \\\\////
         \\\///
          \\//
           \/
  '
end

def mediumSpaceship
puts  '      (=========)
      |=========|
      |====_====|
      |== / \ ==|
      |= / _ \ =|
   _  |=| ( ) |=|
  /=\ |=|     |=| /=\
  |=| |=| USA |=| |=|
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

def start_up
  greeting
  menu
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

def menu
  available_choices = [1,2,3,4,5,6,7]
  choice = 0
  while !available_choices.include?(choice)
    display_options
    display_list
    choice = gets.chomp.to_i
  end
  handle_tasks(choice)
end


def display_options
  puts "\nPlease select from the following list:\n"
end

def display_list
  puts "\n    1. See our list of Pilots
    2. View our Missions
    3. See our Spacecrafts
    4. Hire a pilot
    5. Fire a pilot
    6. Update
    7. Exit\n"
end

def handle_tasks(num)
  case num
  when 1
    puts Pilot.all.map{|i| i.name}
    puts "Type name of pilot to see bio or type 1 go back to main screen."
    option = gets.chomp.capitalize
    if option == "1"
      menu
    else
      pilotBio(option)
    end
  when 2
    puts "\n"
    puts Mission.all.map{|i| i.stdInfo}
    menu
  when 3
    puts Spacecraft.all.map{|i| i.stdInfo}
    puts "Type name of spacecraft to see in action or type 1 go back to main screen."
    option = gets.chomp.capitalize
    if option == "1"
      menu
    else
      spaceImage(option)
    end
  when 4
    create_pilot
  when 5
    fire
  when 6
    update
  when 7
    exit
  end

end

def pilotBio(name)
  bioName = Pilot.find_by(name: name)
  puts"  Name: #{bioName.name}
  Country of Origin: #{bioName.country_of_origin}
  Age: #{bioName.age}
  Missions: #{bioName.missions.map{|m| m.missionInfo}}"
  profile(name)
end

def profile(option)
 guy = Pilot.find_by(:name=>option)
 person(guy.gender, guy.country_of_origin)
end

def create_pilot
  puts "What is the name of the pilot?"
  pilot_name = gets.chomp
  puts "What is the country of origin?"
  coe = gets.chomp
  puts "What is the pilot's age?"
  age = gets.chomp.to_i
  puts "What is the pilot's gender? (M/F)"
  gender = gets.chomp.upcase

  Pilot.create(name: pilot_name, country_of_origin: coe, age: age, gender: gender)
  menu
end

def fire
  puts Pilot.all.map{|i| i.name}
  puts "Who do you want to fire?"
  input = gets.chomp.capitalize
  pilot = Pilot.find_by(name: input)
  pilot.delete
  menu
end

def spaceImage(option)
  ship = Spacecraft.find_by(name: option)
  case ship.max_capacity

  when (1..4)
    smallSpaceship
  when (4..7)
    mediumSpaceship
  when (7..20)
    #bigShip
    largeSpaceship
  end
  menu
end

def update
    puts Pilot.all.map{|i| i.name}
    puts "Whose information do you want to update?"
    user_input = gets.chomp.capitalize
    pilot = Pilot.find_by(name: user_input)
    puts "What information do you want to update?
    Age
    Gender
    Country"
    input = gets.chomp.downcase

    case input
    when "age"
      puts "What do you want to change the age to?"
      age = gets.chomp.to_i
      pilot.update(age: age)
    when "gender"
      puts "What gender is the pilot?"
      gender = gets.chomp
      pilot.update(gender: gender)
    when "country"
      puts "What country is the pilot from?" 
      country = gets.chomp
      pilot.update(country_of_origin: country)
    end
    
    menu

end





