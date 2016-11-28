def multiply
    puts "We are about to do some multiplication!"
    yield(3, 7)
    puts "That was fun!"
end

multiply do |x, y|
    product = x * y
    puts "#{product}"
end

squares = [1, 4, 9, 16, 25, 36, 49, 64]
car = {color: "red", make: "Ford", model: "Taurus", miles: 123103}

puts "Squares: #{squares}"
puts "Car: #{car}"

squares.each do |square|
    puts "#{square} is a square."
end

squares.map! do |square|
    square = (square**0.5).to_i
end

puts "The squares have been square-rooted! #{squares}"

car.each do |k, v|
    puts "My car's #{k} is #{v}"
end

squares.delete_if do |n|
    n < 10
end

car.delete_if do |k, v|
    v == "red"
end

squares.keep_if do |n|
    n < 50
end

car.keep_if do |k, v|
    v.instance_of? String
end

squares.select do |n|
    n.even?
end

car.select do |k, v|
    v.instance_of? String
end

squares.take_while |n|
    n < 30
end