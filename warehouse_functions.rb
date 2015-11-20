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

def item_at_bay(input_id)
  item_chosen = ""
  WAREHOUSE.select! {|bay| item_chosen = bay[:item] if bay[:bay_number] == input_id }
  return item_chosen
end

def bay_for_item(input_item)
  bay_number = ""
  WAREHOUSE.select! {|bay| bay_number = bay[:bay_number] if bay[:item] == input_item }
  return bay_number
end
 