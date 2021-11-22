class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

BRANDS = []       #made aware instantly by committing in the init

  def initialize(brand)
    @brand = brand      
    BRANDS << brand unless BRANDS.include?(brand) #uniq crashed the initial test, UNLESS used as a If/Unless statement modifier      
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end