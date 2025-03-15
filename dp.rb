city1 = "Rochester"
city2 = "Fargo"
city3 = "Worcester"

p "You should visit #{city1}, #{city2}, and #{city3}."

p "Enter a password"
pw = gets.chomp
p pw == "Joshua" ? "Shall we play a game?" : "Access denied."
    if pw == "Joshua"
      p "Shall we play a game?"
    else
      p "Access denied."
    end

title = "Catcher in the Rye"
author = "JD Salinger"
puts "'#{title}' was written by #{author}."