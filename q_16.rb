# An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for). The list of items (and their value) that were tested are:

# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

# Write a program that, given a person’s score can tell them: a) whether or not they’re allergic to a given item b) the full list of allergies.

#identifies the highest power of two that is lower than score, returns that number
def identify_highest_power(value)
    powers_of_two = [256.0, 128.0, 64.0, 32.0, 16.0, 8.0, 4.0, 2.0, 1.0]

    for power in powers_of_two
        if value / power < 1
            next
        else
            return power
        end
    end
end

def detect_allergies(score)
    allergies_for_each_value = {
        "1" => "eggs", #2**0
        "2" => "peanuts", #2**1
        "4" => "shellfish", #2**2
        "8" => "strawberries", #2**3
        "16" => "tomatoes", #2**4
        "32" => "chocolate", #2**5
        "64" => "pollen", #2**6
        "128" => "cats"  #2**7
    }

    if score > 255 || score < 1 || score.class == Float
        return "Impossible to compute"
    end

    allergies = []
    while score > 0 # the loop pushes the allergy corresponding to the highest index onto the array, then subtracts that value from the score and tests again
        allergies.push(allergies_for_each_value[identify_highest_power(score).to_i.to_s])
        score -= identify_highest_power(score) 
        identify_highest_power(score)
    end

    return allergies
end

 #loops through the array of allergies created by detect_allergies(score) and checks if a specific allergy is in the array 
def query_allergies(allergy, score)
    list_of_allergies = detect_allergies(score)
    for item in list_of_allergies
        if item == allergy
            return "You are allergic to #{allergy}."
        end
        return "You are not allergic to #{allergy}."
        
    end
end

p(detect_allergies(34))
p(query_allergies("chocolate", 34))


puts("What is your allergy score?")
score = gets.chomp
# system("clear")


while true
    puts("What would you like to know? (a for querying a given item, b for the full list, exit to exit)")
    query = gets.chomp
    if query == "a"
        puts("What item would you like to query?")
        response = gets.chomp
        p(response)
        p(query_allergies(response, score.to_i))
    elsif query == "b"
        puts("Your allergies are: #{detect_allergies(score.to_i)}.")
    elsif query == "exit"
        exit
    else
        puts("That was not a valid input, please enter a or b")
    end
end

#to do: implement ttyp-prompt