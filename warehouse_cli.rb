require_relative('./warehouse_functions_refactored')

puts "WAREHOUSE PICKER PATH CALCULATOR"
puts "------------------------------------"
puts "Welcome to the Warehouse Picker Path Calculator.\nPlease enter an item you would like to collect:\n"
items_list = []
inputted_item = gets.chomp.downcase

def check_item_exists(inputted_item)
  until WAREHOUSE.any? {|product| inputted_item == product[:item]}
    puts "We don't seem to have that item. Please check the spelling and enter again:\n"
    inputted_item = gets.chomp.downcase
  end
  return inputted_item
end 

inputted_item = check_item_exists(inputted_item)

items_list << inputted_item

puts "Would you like to add another item? Enter y/n"
answer = gets.chomp.downcase

until answer == "n"
  puts "Please enter the next item:\n"
  inputted_item = gets.chomp.downcase

  inputted_item = check_item_exists(inputted_item)
 
  items_list << inputted_item

  puts "Would you like to add another item? Enter y/n"
  answer = gets.chomp.downcase
end

puts "\nThe path to collect your items is: #{calculate_path(*items_list)}"

