require_relative('./warehouse_functions')

####Single bay/item

# Given a bay, returns the item in that bay

found_item = item_at_bay('b5')
puts "The item at bay 5 is: #{found_item} (Expect nail filer)"
puts "\n"

# Given an item return the bay that it is in.

found_bay = bay_for_item('nail filer')
puts "The bay for item 'nail filer' is: #{found_bay} (Expect b5)"
puts "\n"

#### Multiple bays/items

# Given a list of bays, list the items in those bays

found_multiple_items = multiple_bay_items("b5","b10","b6")
puts "The items in bays b5, b10 and b6 are: #{found_multiple_items}"
puts "\n"

# Given a list of items find the bays.

found_multiple_bays = multiple_bay_locations("shoe lace", "rusty nail", "leg warmers")
puts "The bay locations for shoe lace, rusty nail and leg warmers are: #{found_multiple_bays}"
puts "\n"
# given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"

#### Advanced

# Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. 

bays_list = multiple_bay_items("b5","b10","b6")
bays_max_distance = maximum_bay_distance("b5", "b10", "b6")

puts "The products in bays b5, b10, and b6 are: #{bays_list} \nThe maximum distance between bays is: #{bays_max_distance} (expect 5)"
puts "\n"

bays_list_2 = multiple_bay_items("b3", "c7", "c9", "a3")
bays_max_distance_2 = maximum_bay_distance("b3", "c7", "c9", "a3")

puts "The products in bays b3, c7, c9 and a3 are: #{bays_list_2} \nThe maximum distance between bays is: #{bays_max_distance_2} (expect 15)"
puts "\n"

# Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:

# given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
# given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"


path_for_items = calculate_path("shoe lace", "rusty nail", "leg warmers")
puts "To collect items shoe lace, rusty nail, and leg warmers, the path to be followed is: #{path_for_items} (expect c1, c9, c10)"
puts "\n"

path_for_items_2 = calculate_path("hanger", "deodorant", "candy wrapper", "rubber band")
puts "To collect items hanger, deodorant, candy wrapper, and rubber band, the path to be followed is: #{path_for_items_2} (expect a10, a4, c8, b9)"




