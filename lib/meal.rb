class Meal
<<<<<<< HEAD
attr_accessor :waiter, :customer, :total, :tip

  @@all = []
  
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
=======
>>>>>>> 223350402384ef4f6c5a365a9c6f57a627ed4068
  
  def meals
    Meal.all.select.do |meal|
      meal.customer == self 
    end
<<<<<<< HEAD
    
  def self.all
    @@all 
=======
>>>>>>> 223350402384ef4f6c5a365a9c6f57a627ed4068
  end
  
end