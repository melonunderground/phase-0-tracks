# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# [fill in any steps here] turn the string of items separated by spaces into an array with .split(" "). Add the items from the array into a hash and set the default quantity to 1. (array.each do |item| hash = {:item => 1})
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