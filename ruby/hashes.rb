# Create a hash
# For all desired attributes:
#   Ask for data
#   Get input and save to hash
# 
# Print hash to screen
# Ask if the user wants to update key
# If user wants to update key
#   Ask which key
#   If not none then update that key
# Print hash
# Exit

client = {}
puts "What is your name?"
client[:name] = gets.chomp
puts "How many rooms do you have?"
client[:rooms] = gets.chomp.to_i
puts "Would you like paint? (y/n)"
p = gets.chomp.downcase
case p
when 'y'
    client[:paint] = true
when 'n'
    client[:paint] = false
else
    puts "--Invalid response--"
    client[:paint] = p
end

puts client

puts "What value would you like to update? Enter 'none' without quotes if none"

input = gets.chomp

if client[input.to_sym]
    
    case input
    when 'paint'
        p = gets.chomp.downcase
        case p
        when 'y'
            client[:paint] = true
        when 'n'
            client[:paint] = false
        else
            puts "--Invalid response--"
            client[:paint] = p
        end
    when 'name'
        client['name'] = gets.chomp
    when 'rooms'
        client['rooms'] = gets.chomp.to_i
    end

    puts client
    
end