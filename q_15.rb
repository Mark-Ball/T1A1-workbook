raining = true
temperature = "hello"

if raining == true
    if temperature < 15
        puts("It's wet and cold")
    else
        puts("It's warm and raining")
    end
elsif raining == false
    if temperature < 15
        puts("It's not raining but cold")
    else
        puts("It's warm but not raining")
    end
else
    puts("Invalid input")
end