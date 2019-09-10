arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
i = 0
while (i < arr.size - 1 and arr[i] < arr[i + 1])
    i = i + 1 end
puts i
placeholder = arr[i]
arr[i] = arr[i + 1]
arr[i + 1] = placeholder