require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true,
)

store5 = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false,
)

store6 = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true,
)
#  fetch (a collection of) only those stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)
# Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "store name: #{store.name} and store annual revenue: #{store.annual_revenue}"
end

# fetch stores that carry women's apparel and are generating less than $1M in annual revenue.
@women_stores = Store.where(womens_apparel: true)
@women_stores.each do |store|
  if store.annual_revenue > 1000000
    puts "stores that generate annual revenue > 1000000 are: store name: #{store.name} and annual revenue: #{store.annual_revenue}"
  end
end
