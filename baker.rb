# class Cake
#   def initialize(batter)
#     @batter = batter
#     @baked = true
#   end
# end
# class Egg
# end
# class Flour
# end
# class Baker
#   def bake_cake
#     @batter = []
#     pour_flour
#     add_egg
#     stir_batter
#     return Cake.new(@batter)
#   end
#   def pour_flour
#     @batter.push(Flour.new)
#   end
#   def add_egg
#     @batter.push(Egg.new)
# end
# def stir_batter
# end
# private :pour_flour, :add_egg, :stir_batter
# end

# Because of private,
# You can’t say
# b = Baker.new
# b.add_egg

# This is how you call private on setter methods


# class Dog
#   attr_reader :age, :dog_years
#   def dog_years=(years)
#     @dog_years = years
#   end
#   def age=(years)
#     @age = years
#     self.dog_years = years * 7
# end
#   private :dog_years=
# end

# # the call
# rover = Dog.new
# rover.age = 10
# puts "Rover is #{rover.dog_years} in dog years."

# Protected Methods in Action

class C
  def initialize(n)
    @n = n
  end
  def n
    @n
  end
  def compare(c)
    if c.n > n
      puts "The other object's n is bigger."
    else
      puts "The other object's n is the same or smaller."
    end
end
  protected :n
end
c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)

# explanation ith n protected rather than private, c1 can ask c2 to execute n, because c1 and c2 are both instances of the same class. But if you try to call the n method of a C object when self is anything other than an instance of C (or of one of C’s ancestors or descendants), the method fails.


