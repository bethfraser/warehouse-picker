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
