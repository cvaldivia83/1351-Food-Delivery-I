require_relative "../views/customers_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customers_repository)
    @customers_repository = customers_repository
    @customers_view = CustomerView.new
  end

  def add
    name = @customers_view.ask_user_for_stuff("name")
    address = @customers_view.ask_user_for_stuff("address")
    new_customer = Customer.new(name: name, address: address)
    @customers_repository.create(new_customer)
  end

  def list
    all_customers = @customers_repository.all
    @customers_view.show_customers(all_customers)
  end

  def edit
    list
    id = @customers_view.choose_customer
    customer = @customers_repository.find(id)
    new_name = @customers_view.ask_user_for_stuff("name")
    new_address = @customers_view.ask_user_for_stuff("address")
    customer.name = new_name
    customer.address = new_address
    @customers_repository.edit
  end
end
