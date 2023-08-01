require "csv"
require_relative "../models/meal"

# csv_file = "../../data/meals.csv"

# id = 1
# results = meals.select { |meal| meal.id == id }
# p results

# CSV.open(csv_file, "wb") do |csv|
#   csv << ["id","name", "price"]
#   csv << ["1", "John", "15"]
#   csv << ["2", "Lennon", "40"]
#   csv << ["4", "McCartney", "100"]
#   # ...
# end

# meals = []
# CSV.foreach(csv_file, headers: :first_row, header_converters: :symbol) do |row|
#   row[:id] = row[:id].to_i
#   row[:price] = row[:price].to_i
#   meal = Meal.new(row)
#   meals << meal
# end

# p meals
