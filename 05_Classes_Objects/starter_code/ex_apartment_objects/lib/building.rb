#Building Class
class Building
  attr_accessor :name, :address, :apartments

  def initialize(name,address)
    @name = name
    @address = address
    @apartments = {}
  end
end
