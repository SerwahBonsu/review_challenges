# Attributes of a pepper:
# - color: red, green, yellow, orange (string)
# - spiciness from 5-10 (integer)
# - type: Habanero, Jamaican (strings)

# Attributes of a pepper plant
# Age - (integer)
# Yield - Number of peppers until it dies (integer)
# Alive? (boolean)

class Pepper

  # w/out named argument
  # def initialize(pep_stuff)
  #   @color = pep_stuff[0]
  #   @spice_factor = pep_stuff[1]
  #   @type = pep_stuff[2]
  # end


# w/ named argument
  def initialize(pep_stuff = {})
    @color = pep_stuff[:color]
    @spice_factor = pep_stuff[:spice_factor]
    @type = pep_stuff[:type]
  end
end

class PepperPlant

  # w/o named argument
  # def initialize(plantstuff)
  #   @age = plantstuff[0]
  #   @yield = plantstuff[1]
  # end
attr_reader :age
# w/ named argument
  def initialize(plantstuff = {})
    @age = plantstuff[:age]
    @pepper_yield = plantstuff[:yield]
  end


  def alive?
    if age > 10
      return false
    else
      return true
    end
  end
end

# scotched_bonnet = Pepper.new(["red", 10, "jamaican"])
# pep_pot_plant = PepperPlant.new([4,100])
# pep_pot_plant_1 = PepperPlant.new([11,100])
p scotched_bonnet = Pepper.new({color: "red", spice_factor: 10, type: "jamaican"})
pep_pot_plant = PepperPlant.new({age: 11, pepper_yield: 100})
# p scotched_bonnet
# p pep_pot_plant.alive?
# p pep_pot_plant_1.alive?

p pep_pot_plant.alive?


