require "tty-prompt"
prompt = TTY::Prompt.new

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
        "1" => "eggs",
        "2" => "peanuts",
        "4" => "shellfish",
        "8" => "strawberries",
        "16" => "tomatoes",
        "32" => "chocolate",
        "64" => "pollen",
        "128" => "cats"
    }

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
    end
    return "You are not allergic to #{allergy}."
end

while true
    puts("What is your allergy score?")
    score = gets.chomp
    if score.to_i > 255 || score.to_i < 1
        p("Impossible to compute")
    else 
        break
    end
end

while true
    query = prompt.select(
        "What would you like to know?", 
        [
            "Query a specific allergy", 
            "Full list of allergies", 
            "Exit"
        ],
        cycle:true,
        symbols: {marker: ">"})

    if query == "Query a specific allergy"
        specific_allergy = prompt.select(
            "Which allergen would you like to query?",
            [
                "Eggs", 
                "Peanuts", 
                "Shellfish", 
                "Strawberries", 
                "Tomatoes", 
                "Chocolate", 
                "Pollen", 
                "Cats"
            ],
            cycle:true,
            symbols: {marker: ">"})
        puts(query_allergies(specific_allergy.downcase, score.to_i))
    elsif query == "Full list of allergies"
        puts("Your allergies are: #{detect_allergies(score.to_i)}.")
    elsif query == "Exit"
        exit
    else
        puts("Invalid input")
    end
end