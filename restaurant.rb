# name
# owner
# cuisine
# rating

jane = {'name' => "Jamaican Jerk", 'owner' => "Rose", 'cuisine' => "Jamaican", 'rating' => 5}


class Restauran
  attr_reader :name

  def initialize(args_hash)
    @name = args_hash['name']
    @owner = args_hash['owner']
    @cuisine = args_hash['cuisine']
    @rating = args_hash['rating']
  end

  def lower_case_name
    name.downcase
  end

end

lets_eat = Restaurant.new(jane)
lets_eat.name
p lets_eat.lower_case_name



