require 'pry-byebug'

WAREHOUSE = [
{ bay_number: "a10",
  item: "rubber band", 
  location_index: 1 },
{ bay_number: "a9",
  item: "glow stick", 
  location_index: 2 },
{ bay_number: "a8",
  item: "model car", 
  location_index: 3 },
{ bay_number: "a7",
  item: "bookmark", 
  location_index: 4 },
{ bay_number: "a6",
  item: "shovel", 
  location_index: 5 },
{ bay_number: "a5",
  item: "rubber duck", 
  location_index: 6 },
{ bay_number: "a4",
  item: "hanger", 
  location_index: 7 },
{ bay_number: "a3",
  item: "blouse", 
  location_index: 8 },
{ bay_number: "a2",
  item: "stop sign", 
  location_index: 9 },
{ bay_number: "a1",
  item: "needle", 
  location_index: 10 },
{ bay_number: "c1",
  item: "rusty nail", 
  location_index: 11 },
{ bay_number: "c2",
  item: "drill press", 
  location_index: 12 },
{ bay_number: "c3",
  item: "chalk", 
  location_index: 13 },
{ bay_number: "c4",
  item: "word search", 
  location_index: 14 },
{ bay_number: "c5",
  item: "thermometer", 
  location_index: 15 },
{ bay_number: "c6",
  item: "face wash", 
  location_index: 16 },
{ bay_number: "c7",
  item: "paint brush", 
  location_index: 17 },
{ bay_number: "c8",
  item: "candy wrapper", 
  location_index: 18 },
{ bay_number: "c9",
  item: "shoe lace", 
  location_index: 19 },
{ bay_number: "c10",
  item: "leg warmers", 
  location_index: 20 },
{ bay_number: "b1",
  item: "tyre swing", 
  location_index: 21 },
{ bay_number: "b2",
  item: "sharpie", 
  location_index: 22 },
{ bay_number: "b3",
  item: "picture frame", 
  location_index: 23 },
{ bay_number: "b4",
  item: "photo album", 
  location_index: 24 },
{ bay_number: "b5",
  item: "nail filer", 
  location_index: 25 },
{ bay_number: "b6",
  item: "tooth paste", 
  location_index: 26 },
{ bay_number: "b7",
  item: "bath fizzers", 
  location_index: 27 },
{ bay_number: "b8",
  item: "tissue box", 
  location_index: 28 },
{ bay_number: "b9",
  item: "deodorant", 
  location_index: 29 },
{ bay_number: "b10",
  item: "cookie jar", 
  location_index: 30 },
]

def item_at_bay(input_id)
  item_chosen = ""
  WAREHOUSE.select {|bay| item_chosen = bay[:item] if bay[:bay_number] == input_id }
  return item_chosen
end

def bay_for_item(input_item)
  bay_number = ""
  WAREHOUSE.select {|bay| bay_number = bay[:bay_number] if bay[:item] == input_item }
  return bay_number
end

def multiple_bay_items(*bay_id)
# I now have an array of all bay numbers inputted eg [ “b5”, “b10”, “b6” ]
  bay_id.map! {|id| id = item_at_bay(id) }
  bay_id.join(", ")
end

def multiple_bay_locations(*bay_item)
  bay_item.map! {|item| item = bay_for_item(item) }
  bay_item.join(", ")
end

def location_index_finder(item_or_bay)
  location_index = 0
  WAREHOUSE.select {|bay| location_index = bay[:location_index] if bay[:item] == item_or_bay || bay[:bay_number] == item_or_bay }
  return location_index
end


def maximum_bay_distance(*bay_location)
  bay_location.map! {|item| item = location_index_finder(item) }
  bay_location = bay_location.sort
  distance = bay_location.last - bay_location.first
  return distance
end

def return_full_product_listing(product_entered)
full_product = Array.new
WAREHOUSE.select { |product| full_product = product if product[:item] == product_entered}
full_product
end

def calculate_path(*input_items)
# I now have an array of the items inputted eg ["shoe lace", "rusty nail", "leg warmers"]
  input_items.map! { |input_item| input_item = return_full_product_listing(input_item) }
  sorted_items = input_items.sort_by {|item| item[:location_index]}
  sorted_items.map! {|item| item = item[:bay_number]}
  sorted_items.join(", ")
end





 