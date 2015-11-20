require_relative('./warehouse_functions')

####Single bay/item

# Given a bay, returns the item in that bay

found_item = item_at_bay('b5')
puts "The item at bay 5 is: #{found_item} (Expect nail filer)"
puts "\n"

# Given an item return the bay that it is in.

# found_bay = bay_for_item('nail filer')
# puts "The bay for item 'nail filer' is: #{found_bay} (Expect b5)"
# puts "\n"

