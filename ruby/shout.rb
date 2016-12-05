# module Shout
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end

#     def self.yell_happily(words)
#         words + "!!!" + " :)"
#     end
# end

# puts Shout.yell_angrily("These are words")
# puts Shout.yell_happily("These are words")

module Shout
    def yell_angrily(words)
        words + "!!!" + " :("
    end

    def yell_happily(words)
        words + "!!!" + " :)"
    end
end

class Hippo
    include Shout
end

class Penguin
    include Shout
end

h = Hippo.new
p = Penguin.new

puts h.yell_angrily("I'm a hippo")
puts h.yell_happily("I'm a hippo")

puts p.yell_angrily("I'm a penguin")
puts p.yell_happily("I'm a penguin")