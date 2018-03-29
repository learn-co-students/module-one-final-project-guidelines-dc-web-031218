


def hello
  puts "hello world"
end

def spaceship_imageCanada

end

def person(gender, country_of_origin)

  case gender

  when "M"
    person = <<-HERE


                .#####.
                |_____|
               (\#/ \#/)
                |  U  |
                \  _  /
                 \___/
             .---'   `---.
            /  ##{country_of_origin}#  \
           /  |####|####|  \
          /  /\ ####### /\  \
         (  \  \  ###  /  /  )
          \  \  \_###_/  /  /
           \  \ |\   /| /  /
            'uuu| \_/ |uuu'
                |  |  |
                |  |  |
                |  |  |
                |  |  |
           dp   |  |  |
                )  |  (
              .oooO Oooo.
      HERE


  when "F"

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

def menu
  available_choices = [1,2,3,4]
  choice = 0
  while !available_choices.include?(choice)
    display_options
    display_list
    choice = gets.chomp.to_i
  end
  handle_tasks(choice)
end

def handle_tasks(num)
  case num
  when 1
    puts Pilot.all.map{|i| i.name}
    puts "Type name of pilot to see bio or type 1 go back to main screen."
    option = gets.chomp
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
    option = gets.chomp
    if option == "1"
      menu
    else
      spaceImage(option)
    end
  when 4
    exit
  end

end

def display_list
  puts "\n    1. See our list of Pilots
    2. View our Missions
    3. See our Spacecrafts
    4. Exit\n"
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

def pilotBio(name)
  bioName = Pilot.find_by(name: name)
  puts"  Name: #{bioName.name}
  Country of Origin: #{bioName.country_of_origin}
  Age: #{bioName.age}
  Missions: #{bioName.missions.map{|m| m.missionInfo}}"
  menu
end

def formatMissions(missions)

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

def display_options
  puts "\nPlease select from the following list:\n"
end
