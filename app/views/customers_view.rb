class CustomerView
  def ask_user_for_stuff(word)
    puts "What is your #{word}?"
    gets.chomp
  end

  def show_customers(array)
    array.each do |customer|
      puts "#{customer.id} - #{customer.name} - #{customer.address}"
    end
  end

  def choose_customer
    puts "Which customer would you like to choose?"
    gets.chomp.to_i
  end
end
