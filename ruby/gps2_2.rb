# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:turn the string of items separated by spaces into an array with .split(" "). Add the items from the array into a hash and set the default quantity to 1. (array.each do |item| hash = {:item => 1})
# set default quantity to 1
# print the list to the console [can you use one of your other methods here?] call the method that prints the list
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name as key to hash and quantity as value
# output: updated list

# Method to remove an item from the list
# input: list, item name, and optional quantity
# steps: remove item name and quantity from hash
# output: updated list

# Method to update the quantity of an item
# input: list, item name, and the new quantity
# steps: updating the quantity of an item
# output: updated list

# Method to print a list and make it look pretty
# input: list, item name, quantity
# steps: print the list with -'s above and below it
# output: updated list

def make_list(items)
  list = {}
  new_items = items.split(" ")
  new_items.each do |item|
    list[item] = 1
end
  p list
return list
end
def add_item(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
  p grocery_list
end
def remove_item(grocery_list, item_name, quantity)
  grocery_list.delete(item_name)
  p grocery_list
end
def update_quantity(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
  p grocery_list
end
def pretty_list(grocery_list)
  puts "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
  p grocery_list
  puts "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
end
#list = make_list("carrots apples cereal #pizza")
#add_item(list, "pear", 2)
#remove_item(list, "carrots", 2)
#update_quantity(list, "apples", 16)
#pretty_list(list)
new_list = {}
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)
remove_item(new_list, "Lemonade", 2)
update_quantity(new_list, "Ice Cream", 1)
pretty_list(new_list)



What did you learn about pseudocode from working on this challenge? the outline provided for this challenge helped us get started with the input-steps-and output for pseudocoding each method. after spending the time to get it right our psedocode was simple and easy to read. it helped when we finally entered the associated code.
What are the tradeoffs of using arrays and hashes for this challenge? using arrays would simplify entering the food items but without the hash it would be difficult to link items to their quantity. we used a hash for our grocery list to link keys and their values and change them with additional methods.

What does a method return? an object which can be anything even an array of multiple things which is still just one object. in ruby we don't need to use the keyword return since the method will return the value that was returned from the last evaluated statement. if we do want to return from the method early we can do this using the return statement.
What kind of things can you pass into methods as arguments?
keywords, hashes, arrays,default values

How can you pass information between methods?
by creating global variables you can pass information between methods
What concepts were solidified in this challenge, and what concepts are still confusing?
gained a further understanding of how to write pseudocode for any language and how to include methods in other method arguments. when to include return in a method is still confusing.