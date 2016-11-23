
def search_array(arr, int)
    i = 0
    arr.each do |num|
        return i if num == int
        i += 1
    end
    nil
end

arr = [42, 89, 23, 1]

puts "search_array(arr, 1) == #{search_array(arr, 1)}"
puts "search_array(arr, 24) == #{search_array(arr, 24) or 'nil'}"

def fib(int)
    result = [0, 1]
    (int-2).times do
        result.push(result[-2] + result[-1])
    end
    result
end

puts "Verifcation: fib(100).last == 218922995834555169026 is #{fib(100).last == 218922995834555169026}"
 
# Bubble Sort
# 
# - initialize a count variable to keep track of 
#       how many numbers to check in current iteration
# -Loop until count is 1, decrease counter every loop
# -Access every index in array until current count is reached
# -If not last element in array and current number is greater than next number
#     -Swap the numbers in place

def bubble_sort(arr)
    count = arr.length
    while count > 1
        count.times do |c|
            if arr[c+1] && arr[c] > arr[c+1]
                arr[c], arr[c+1] = arr[c+1], arr[c]
            end
        end
        count -= 1
    end
    arr
end

new_array = (1..10).to_a.shuffle
puts "Random array:"
p new_array
puts "Sorting the bubbles..."
p bubble_sort(new_array)
