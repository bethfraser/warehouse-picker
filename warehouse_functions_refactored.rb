require 'pry-byebug'

WAREHOUSE = [
{ bay_number: "a10",
  item: "rubber band" },
{ bay_number: "a9",
  item: "glow stick" },
{ bay_number: "a8",
  item: "model car" },
{ bay_number: "a7",
  item: "bookmark" },
{ bay_number: "a6",
  item: "shovel" },
{ bay_number: "a5",
  item: "rubber duck" },
{ bay_number: "a4",
  item: "hanger" },
{ bay_number: "a3",
  item: "blouse" },
{ bay_number: "a2",
  item: "stop sign" },
{ bay_number: "a1",
  item: "needle" },
{ bay_number: "c1",
  item: "rusty nail" },
{ bay_number: "c2",
  item: "drill press" },
{ bay_number: "c3",
  item: "chalk" },
{ bay_number: "c4",
  item: "word search" },
{ bay_number: "c5",
  item: "thermometer" },
{ bay_number: "c6",
  item: "face wash" },
{ bay_number: "c7",
  item: "paint brush" },
{ bay_number: "c8",
  item: "candy wrapper" },
{ bay_number: "c9",
  item: "shoe lace" },
{ bay_number: "c10",
  item: "leg warmers" },
{ bay_number: "b1",
  item: "tyre swing" },
{ bay_number: "b2",
  item: "sharpie" },
{ bay_number: "b3",
  item: "picture frame" },
{ bay_number: "b4",
  item: "photo album" },
{ bay_number: "b5",
  item: "nail filer" },
{ bay_number: "b6",
  item: "tooth paste" },
{ bay_number: "b7",
  item: "bath fizzers" },
{ bay_number: "b8",
  item: "tissue box" },
{ bay_number: "b9",
  item: "deodorant" },
{ bay_number: "b10",
  item: "cookie jar" },
]

def item_at_bay(input_bay)
  item_chosen = ""
  WAREHOUSE.select {|product| item_chosen = product[:item] if product[:bay_number] == input_bay }
  return item_chosen
end

def bay_for_item(input_item)
  bay_number = ""
  WAREHOUSE.select {|product| bay_number = product[:bay_number] if product[:item] == input_item }
  return bay_number
end

def multiple_bay_items(*bay_id)
  bay_id.map! {|id| id = item_at_bay(id) }
  bay_id.join(", ")
end

def multiple_bay_locations(*bay_item)
  bay_item.map! {|item| item = bay_for_item(item) }
  bay_item.join(", ")
end

def location_index_finder(item_or_bay)
  location_index = 0
  WAREHOUSE.select {|product| location_index = WAREHOUSE.index(product) if product[:item] == item_or_bay || product[:bay_number] == item_or_bay }
  return location_index
end

def maximum_bay_distance(*bay_location)
  bay_location.map! {|item| item = location_index_finder(item) }
  distance = bay_location.max - bay_location.min
  return distance
end

def calculate_path(*input_items)
  input_items.map! { |input_item| input_item = [ bay_for_item(input_item), location_index_finder(input_item) ] }
  sorted_items = input_items.sort_by {|item| item[1]}
  sorted_items.map! {|item| item = item[0]}
  sorted_items.join(", ")
end



 