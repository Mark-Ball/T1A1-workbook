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

#this method identifies the highest power of two that is lower than score
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
        "1" => "eggs", #2^^0
        "2" => "peanuts", #2^^1
        "4" => "shellfish", #2^^2
        "8" => "strawberries", #2^^3
        "16" => "tomatoes", #2^^4
        "32" => "chocolate", #2^^5
        "64" => "pollen", #2^^6
        "128" => "cats"  #2^^7
    }

    if score > 256 || score < 1 || score.class == Float
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


# p("Highest power was: #{identify_highest_power(7)}")
# p(identify_highest_power(7).to_i.to_s)
p(detect_allergies(255))