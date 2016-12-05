class WordGuess
    attr_reader :secret_word, :guess_word, :num_guesses_left, :guessed_letters
    
    def initialize(word)
        @secret_word = word.upcase
        @num_guesses_left = word.length
        @guessed_letters = []
        @guess_word = "_" * word.length
    end

    def guess_letter(c)
        @num_guesses_left -= 1
        @guessed_letters.push(c.upcase)
        @guess_word.split("").each_with_index do |char, idx|
            if @secret_word[idx] == c.upcase
                @guess_word[idx] = c.upcase
            else
                @guess_word[idx] = char
            end
        end
    end

    def has_won()
        @secret_word == @guess_word
    end
end


print "Please enter a word for a friend to guess: "
to_guess = gets.chomp

game = WordGuess.new(to_guess)

while !game.has_won && game.num_guesses_left > 0
    puts "Please enter a letter to guess"
    guess = gets.chomp.upcase

    if game.guessed_letters.include? guess
        puts "You already guessed that letter"
    else
        game.guess_letter guess
    end

    puts "You've guessed #{game.guess_word} correctly so far with #{game.num_guesses_left} guesses left."
end

if game.has_won
    puts "Congratulations, winner."
else
    puts "You lost :("
end