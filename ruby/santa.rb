
class Santa
    attr_reader :ethnicity, :reindeer_ranking
    attr_accessor :gender, :age

    def initialize(gender, ethnicity)
        puts "Initializing Santa instance..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}!"
    end

    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(reindeer)
        @reindeer_ranking << reindeer if @reindeer_ranking.delete(reindeer)
    end
end

# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("Oreo")

genders = ["Male", "Female", "Other", "None"]
ethnicities = ["Black", "White", "Red", "Blue", "Purple", "Orange"]

santas = Array.new(50) {Santa.new(genders.sample, ethnicities.sample)}

santas.map! do |santa|
    santa.age = rand(0..140)
    puts "Santa is a #{santa.age} year-old #{santa.ethnicity}-#{santa.gender}"
end
