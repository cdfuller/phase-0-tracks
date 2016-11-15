
puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is the hamster? (1 - 10)"
volume = gets.chomp.to_i

puts "What color is your hamster?"
color = gets.chomp

puts "Is your hamster adoptable? (y/n)"
adoptable = gets.chomp

puts "How many years old is your hamster?"
age = gets.chomp

if age == ''
    age = nil
end

puts "You've added your hamster named #{name}."
if volume < 1 || volume > 10
    puts "Your hamster doesn't conform to our volume scale. Good Luck"
else
    puts "How loud is your hamster? On a scale of 1-10, it's at #{volume}!!"
end

puts "They've got #{color} fur."

if adoptable == 'y'
    puts "It's adoptable!"
elsif adoptable == 'n'
    puts "Why would you release this terror on the world? Unadoptable!!"
else
    puts "We aren't too sure if this hamster is adoptable"
end

if age == nil
    puts "Not too sure how old this hamster is..."
else
    puts "This hamster is #{age} years old."
end