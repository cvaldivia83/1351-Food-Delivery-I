class MealsView
  def ask_user_for_stuff(word)
    puts "What is the #{word} of your meal?"
    gets.chomp
  end

  def show_meals(array)
    array.each do |meal|
      puts "#{meal.id} - #{meal.name} - R$#{meal.price},00"
    end
  end

  def choose_meal
    puts "Which meal would you like to choose?"
    gets.chomp.to_i
  end
end
