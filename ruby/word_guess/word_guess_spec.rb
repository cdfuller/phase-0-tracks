require_relative 'word_guess'

describe WordGuess do
    let(:game) { WordGuess.new("Cheese")}

    it "secret word is set" do
        expect(game.secret_word).to eq "CHEESE"
    end

    it "guessing a letter changes guess word" do
        game.guess_letter("e")
        expect(game.guess_word).to eq "__EE_E"
    end

    it "guessing a letter decreases number of guesses left" do
        num_guesses = game.num_guesses_left
        game.guess_letter("e")
        expect(game.num_guesses_left).to eq num_guesses - 1
    end

    it "user can win" do
        game.guess_letter("c")
        game.guess_letter("h")
        game.guess_letter("e")
        game.guess_letter("s")
        expect(game.has_won).to eq true
    end

    it "user can lose" do 
        game.guess_letter("a")
        game.guess_letter("b")
        game.guess_letter("c")
        game.guess_letter("d")
        game.guess_letter("e")
        game.guess_letter("f")
        expect(game.has_won).to eq false
    end

end