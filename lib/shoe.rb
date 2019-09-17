class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  def initialize(brand)
    @brand = brand 
  end 
  
  BRANDS = []

def brand=(brand)
  @brand = brand 
  brand.unique do |ubrand|
    BRANDS << ubrand
  end 
end 
    

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end