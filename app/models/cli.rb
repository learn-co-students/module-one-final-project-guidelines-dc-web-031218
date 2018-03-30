

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
            /     '+country_of_origin+'
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
                |  |  |
                )  |  (
              .oooO Oooo.
      '


  when "F"
    puts '             _____
    _._     |     |
  .:   :.   | '+country_of_origin+' |
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
  system "clear"
  puts '    __  ____           _                ______            __             __
   /  |/  (_)_________(_)___  ____     / ____/___  ____  / /__________  / /
  / /|_/ / / ___/ ___/ / __ \/ __ \   / /   / __ \/ __ \/ __/ ___/ __ \/ /
 / /  / / (__  |__  ) / /_/ / / / /  / /___/ /_/ / / / / /_/ /  / /_/ / /
/_/  /_/_/____/____/_/\____/_/ /_/   \____/\____/_/ /_/\__/_/   \____/_/
                                                                           '
  puts"Welcome to Mission Control\n"
end

def menu
  available_choices = [1,2,3,4,5,6,7,8,9]
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
    4. Hire a Pilot
    5. Fire a Pilot
    6. Update Pilot Info
    7. Watch Shuttle Launch
    8. Take a journey through space
    9. Exit\n"
  puts ""
end

def handle_tasks(num)
  case num
  when 1
    puts ""
    puts Pilot.all.map{|i| i.name}
    puts ""
    puts "Type name of pilot to see bio or type 1 go back to main screen."
    puts ""
    option = gets.chomp.capitalize
    if option == "1"
      menu
    else
      system "clear"
      pilotBio(option)
      sleep(1.5)
      menu
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
    create_pilot
  when 5
    fire
  when 6
    update
  when 7
    liftoff
  when 8
    journey_through_space
    menu
  when 9
    exit
  end

end

def pilotBio(name)
  bioName = Pilot.find_by(name: name)
  puts"  Name: #{bioName.name}
  Country of Origin: #{bioName.country_of_origin}
  Age: #{bioName.age}
  Missions: "
  bioName.missions.each{|m| m.missionInfo}
  puts " "
  puts "\tTotal Distance Traveled: #{bioName.missions.sum{|mission| mission.total_distance}}" 
  profile(name)
end

def profile(option)
 guy = Pilot.find_by(:name=>option)
 person(guy.gender, guy.country_of_origin)
end

def create_pilot
  puts "What is the name of the pilot? Or hit 1 to exit."
  pilot_name = gets.chomp
  if pilot_name == "1"
    menu
  end
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
  puts "Who do you want to fire? Or hit 1 to exit."
  input = gets.chomp.capitalize
  if input == "1"
    menu
  end
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

def liftoff
  puts '
           !
           !
           ^
          / \
         /___\
        |=   =|
        |     |
        |     |
        |     |
        |     |
        |     |
        |     |
        |     |
        |     |
        |     |
       /|##!##|\
      / |##!##| \
     /  |##!##|  \
    |  / ^ | ^ \  |
    | /  ( | )  \ |
    |/   ( | )   \|
        ((   ))
        (( : ))
        (( : ))
        ((   ))
        ((   ))
        (     )
           .
           .
           .
  '
  15.times do
    puts ''
    sleep(0.3)
  end
  45.times do
    puts ''
    sleep(0.1)
  end
  menu
end

def journey_through_space
  stars
  sleep(0.3)
  saturn
  sleep(0.3)

  stars

  rocket
  sleep(0.7)
  stars
  planet1
  stars
  little_stars
  stars

end


#Journey through space images
def rocket
  puts '.                  .                         .
      .         ,
   .               .                 .                   .            .
     .                          ,
      .                .  /\
                     .   (  )                       .        .
                         (  ).                        .
   .                    /|/\|\       .                     ,
        .              /_||||_\
       .                     .
'

end



def saturn
puts '               ~+

      .            *       +
  .      .          .                    |
                  ()    .-.,="``"=.    - o -
        .                (=/_       \    |        .       .       .
                      *   |  *=._    |
  .       .      .         \     `=. )        *           .
                         .   \=.__.= `=      *
      .          .    +                         +              .
                    O      *        *       .                .'


end

def stars
  puts '               .                                            .
     *   .                  .              .        .   *          .
  .         . '
  sleep(0.3)
  puts'                    .       .           .      .        .
        o                             .                   .
         .              .                  .           .
               .
                 .          .         '
  sleep(0.3)
  puts'        ,                ,    ,
 .                  .                         .
      .         ,
   .               .                 .                   .            .
     .                          ,       '
  sleep(0.3)
  puts'      .                .
                     .                              .        .
                             .                        .
   .                               .                     ,
        .          '
  sleep(0.3)
  puts'       .                     .
      .               .                             ,     '
  sleep(0.3)
  puts'  .
          .          .                    .             .          ,'

end

def planet1
  puts '     .                          ,             .                .
                 #\##\#      .                              .        .
               #  #O##\###                .                        .
     .        #*#  #\##\###                       .                     ,
          .   ##*#  #\##\##               .                     .
        .      ##*#  #o##\#         .                             ,       .
            .     *#  #\#     .                    .             .          ,'
end

def little_stars
  puts '               .            |                                .
     *   .                  .     --o--       .        .   *          .
  .         .                       |'
  sleep(0.3)
  puts'                    .       .           .      .  |      .
        o                             .                 -o-.
         .              .                  .             |.
               .
                 .          .         '
  sleep(0.3)
  puts'        ,                ,    ,
 .                  .         oo                .
      .         ,            0000
   .               .          oo       .                   .            .
     .                          ,       '
  sleep(0.3)
  puts'      .                .
                     .                              .        .
                             .                  ****      .
   .                               .           ******          ,
        .                                       ****'
  sleep(0.3)
  puts'       .                     .
      .               .                             ,     '
  sleep(0.3)
  puts'  .
          .          .                    .             .          ,'

end
