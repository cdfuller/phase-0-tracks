def multiply
    puts "We are about to do some multiplication!"
    yield(3, 7)
    puts "That was fun!"
end

multiply do |x, y|
    product = x * y
    puts "#{product}"
end
