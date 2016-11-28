# Fake name function:
# Get real name
# Split by first and last name
# Translate vowels to next vowel
# Translate consonants to next consonant
# Return new name

def fake_name(name)
    name = name.split.rotate
    name.map! do |n|
        n.downcase!
        vowels = 'aeiou'
        vowels_shifted = vowels.split('').rotate.join
        consonants = 'bcdfghjklmnpqrstvwxyz'
        consonants_shifted = consonants.split('').rotate.join

        n.tr!(vowels, vowels_shifted)
        n.tr!(consonants, consonants_shifted)

        n = n.split('')
        n[0] = n[0].upcase
        n = n.join
    end
    name = name.join(' ')
end

# puts "Felicia Torres is #{fake_name('Felicia Torres')}"

input = ''
names = []

puts "What name would you like to decode? Enter 'quit' to exit"

while input = gets.chomp do
    break if input == 'quit'
    secret = {
        decoded_name: input,
        encoded_name: fake_name(input)
    }
    names.push(secret)
end

names.each do |name|
    puts "#{name[:encoded_name]} is actually #{name[:decoded_name]}"
end