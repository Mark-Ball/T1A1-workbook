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

def detect_allergies(score)
    values_for_each_allergy = {
        eggs: 1, #2^^0
        peanuts: 2, #2^^1
        shellfish: 4, #2^^2
        strawberries: 8, #2^^3
        tomatoes: 16, #2^^4
        chocolate: 32, #2^^5
        pollen: 64, #2^^6
        cats: 128  #2^^7
    }

    if score > 256
        return "Impossible to compute"
    end

end

def identify_highest_power(score)
    powers_of_two = [256.0, 128.0, 64.0, 32.0, 16.0, 8.0, 4.0, 2.0, 1.0]

    for powers in powers_of_two
        if score / powers < 1
            next
        else
            return powers
        end
    end
end

p(3 / 256.0)
p(identify_highest_power(3))