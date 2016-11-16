# Encrypt:
# Iterate through string
# Check to see if character is not a space
# If it isn't a space, reassign character to next character
# Return input 

def encrypt(input)
    for i in 0...input.length
        if input[i] != ' '
            input[i] = input[i].next[0]
        end
    end
    input
end

# Decrypt
# Iterate through string
# Check to see if character is not a space
# If it isn't a space, find the index of the letter in the alphabet
# Reassign the character to the previous character in the alphabet
# Return input

def decrypt(input)
    for i in 0...input.length
        if input[i] != ' '
            alphabet = "abcdefghijklmnopqrstuvwxyz"
            letter_index = alphabet.index(input[i])
            input[i] = alphabet[letter_index - 1]
        end
    end
    input
end

# Testing code
# encrypt("abc")
# should return "bcd"
# encrypt("zed") 
# should return "afe"
# decrypt("bcd") 
# should return "abc"
# decrypt("afe") 
# should return "zed"

# Testing
# You can use puts decrypt(encrypt("swordfish")) to test that both 
# methods still work. Decrypt is acting on the return value
# of the encrypt function. 

# DRIVER CODE

# First prompt the user if they wish to encrypt or decrypt. 
puts "Do you wish to encrypt or decrypt?"

# Set a variable to the user's response.
operation = gets.chomp

# Ask the user for their password. 
puts "What is your password"

# Set a variable to their password. 
password = gets.chomp

# Call the requested method on the variable set to their password.
case operation
when "encrypt"
    password = encrypt(password)
when "decrypt"
    password = decrypt(password)
end

# Print the result. 
puts "Your password is #{password}"

