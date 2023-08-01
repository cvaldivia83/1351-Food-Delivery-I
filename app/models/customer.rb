class Customer
  #attr_reader :name, :address
  attr_accessor :id, :name, :address

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
  end
end
