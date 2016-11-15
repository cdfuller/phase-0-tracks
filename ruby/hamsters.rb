
puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is the hamster? (1 - 10)"
volume = gets.chomp.to_i

puts "What color is your hamster?"
color = gets.chomp

puts "Is your hamster adoptable? (y/n)"
adoptable = gets.chomp

puts "How old is your hamster?"
age = gets.chomp.to_i

if age == ''
    age = nil
end