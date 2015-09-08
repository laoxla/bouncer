 def country_check
   puts "What country are you from"
   country = gets.chomp.upcase
   if country == "US"
     us_check_age
   elsif country == "UK"
     uk_check_age
   else
     puts "Sorry we only serve Citizens of the US or UK, Thank You."
   end
end



def us_check_age
  puts "What is your age?"
  age = gets.chomp.to_i
  if age < 18
    puts "Sorry, you can do nothing."
  elsif age >= 18 && age < 21
    puts "Great! you can vote and you can smoke."
  elsif age >= 21 && age < 25
    puts "Awesome! you can drink."
  elsif age >= 25
    puts "Nice! we can rent you a car."
  end
end



def uk_check_age
  puts "What is your age?"
  age = gets.chomp.to_i
  if age >= 18
     puts "Awesome! you can drink."
   elsif age < 16
    puts " Sorry you can't have a drink"
  elsif  age >= 16 && age <18
    puts "Is your parent here?"
    parent = gets.chomp
    if parent == "yes"
      puts "You can have a drink"
    else
      puts "Sorry you can't have a drink "
    end
  end
end

keep_going = true
while keep_going
  country_check
  puts "Change Country?"
  if gets.chomp.downcase != "yes"
    keep_going = false
  end
end
