class Waiter
<<<<<<< HEAD
  
  attr_reader :name, :yrs_experience
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end
    best_tipped_meal.customer
  end
  
  def worst_tipper
    worst_tipped_meal = meals.min do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end
    worst_tipped_meal.customer
  end
 
=======
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
>>>>>>> 223350402384ef4f6c5a365a9c6f57a627ed4068
end