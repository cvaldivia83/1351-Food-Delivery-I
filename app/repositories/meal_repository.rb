require "csv"
require_relative "../models/meal"
require_relative "./main_repository"

class MealRepository < MainRepository

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      meal = Meal.new(row)
      @elements << meal
    end
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "price"]
      @elements.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
