class Meal
  # attr_reader :name, :price
  attr_accessor :id, :name, :price

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end

# frenchies = Meal.new(id: 1, name: "French Fries", price: 15)
# p frenchies
