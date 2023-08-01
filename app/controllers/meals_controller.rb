require_relative "../repositories/meal_repository"
require_relative "../models/meal"
require_relative "../views/meals_view"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealsView.new
  end

  def add
    name = @meal_view.ask_user_for_stuff("name")
    price = @meal_view.ask_user_for_stuff("price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
  end

  def list
    meals = @meal_repository.all
    @meal_view.show_meals(meals)
  end

  def edit
    list
    id = @meal_view.choose_meal
    meal = @meal_repository.find(id)
    new_name = @meal_view.ask_user_for_stuff("name")
    new_price = @meal_view.ask_user_for_stuff("price")
    meal.name = new_name
    meal.price = new_price
    @meal_repository.edit
  end
end
