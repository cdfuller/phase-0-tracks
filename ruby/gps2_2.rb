# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a hash with keys from input
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: return the hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
    # Add the input to the list
# output: return the new list

# Method to remove an item from the list
# input: name of the item
# steps: delete the item
# output: return the new list

# Method to update the quantity of an item
# input: item name and quantity
# steps: update quantiy
# output: list

# Method to print a list and make it look pretty
# input: none
# steps: print each item and quantity
# output: return formatted string

def create_list(items="")
    grocery_list = Hash.new()
    list = items.split(" ")
    list.each {|item| grocery_list[item] = 1 }
    grocery_list
end

def add_to_list(list, item, quantity=1)
    list[item] = quantity
    list
end

def remove_from_list(list, item)
    list.delete(item)
    list
end

def update_item_quantity(list, item, quantity)
    list[item] = quantity
    list
end

def print_list(list)
    list.each {|item, quantity| puts "Item: #{item}, Quantity: #{quantity}"}
end

grocery_list = {}

add_to_list(grocery_list, "Lemonade", 2)
add_to_list(grocery_list, "Tomatoes", 3)
add_to_list(grocery_list, "Onions", 1)
add_to_list(grocery_list, "Ice Cream", 4)

remove_from_list(grocery_list, "Lemonade")

update_item(grocery_list, "Ice Cream", 1)

print_list(grocery_list)
