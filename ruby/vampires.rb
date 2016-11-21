require 'date'

puts "How many employees will be processed?"
num_employees = gets.chomp.to_i

(1..num_employees).each do |employee_num|

    puts "What is your name?"
    name = gets.chomp

    puts "How old are you?"
    age = gets.chomp.to_i

    puts "What year were you born?"
    birth_year = gets.chomp.to_i

    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    wants_garlic_bread = gets.chomp

    if wants_garlic_bread == 'y'
        wants_garlic_bread = true
    elsif wants_garlic_bread == 'n'
        wants_garlic_bread = false
    else
        puts "Invalid Answer"
        exit
    end

    puts "Would you like to enroll in health insurance? (y/n)"
    wants_insurance = gets.chomp

    if wants_insurance == 'y'
        wants_insurance = true
    elsif wants_insurance == 'n'
        wants_insurance = false
    else
        puts "Invalid Answer"
        exit
    end

    puts "What allergies do you have? type 'done' when finished"

    allergic_to_sunshine = false

    while input = gets.chomp
        if input == "sunshine"
            allergic_to_sunshine = true
            break
        elsif input == "done"
            break
        end
    end

    age_correct = birth_year + age == DateTime.now.year

    if allergic_to_sunshine
        puts "Probably a vampire."
    elsif age_correct && wants_garlic_bread && wants_insurance && (name == "Drake Cula" || name == "Tu Fang") 
        puts "Definitely a vampire."
    elsif age_correct && wants_garlic_bread && wants_insurance
        puts "Probably not a vampire."
    elsif !age_correct && !wants_garlic_bread && !wants_insurance
        puts "Almost certainly a vampire."
    elsif !age_correct && (!wants_garlic_bread || !wants_insurance)
        puts "Probably a vampire"
    else
        puts "Results inconclusive"
    end

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."