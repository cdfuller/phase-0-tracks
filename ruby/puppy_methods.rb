class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def play_dead
    puts "Dog is dead."
  end

end


# Driver Code

# jack = Puppy.new
# jack.fetch("Ball")
# jack.speak(3)
# jack.roll_over
# puts jack.dog_years(20)
# jack.play_dead


class Chicken

  def initialize
    puts "A chicken is hatching!"
  end

  def lay_egg(num_eggs)
    num_eggs.times {puts "Egg"}
  end

  def cluck
    puts "Cluck!"
  end

end

chickens = Array.new(50) {Chicken.new}

chickens.each do |chicken|
  chicken.cluck
end