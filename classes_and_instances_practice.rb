
# EXERCISE 1: Calling an instance method
  # class Ticket
  #   def event
  #     "Can't really be specified yet..."
  #   end
  # end

  # ticket = Ticket.new
  # puts ticket.event

# EXERCISE 2: overriding methods
  # class C
  #   def m
  #     puts "First definition of method m"
  #   end

  #   def m
  #     puts "Second definition of method m"
  #   end
  # end

# p C.new.m

# => returns Second definition of method m; This is because When you override a method, the new version takes precedence.

# EXERCISE 3: How instance variables work between methods

  # class Person
  #   def set_name(string)
  #     puts "Setting person's name..."
  #     @name = string
  #   end
  #   def get_name
  #     puts "Returning the person's name..."
  #     @name
  #   end
  # end

  # joe = Person.new
  # joe.set_name("Joe")
  # puts joe.get_name

  # EXERCISE 4

  #   class Ticket
  #     def initialize
  #       puts "Creating a new ticket"
  #     end
  #   end
  # # This will ensure that you see the message "Creating a new ticket!" every time you create a new ticket object by calling Ticket.new
  # p Ticket.new

# EXERCISE 5

    #   class Ticket
    #     def initialize(venue,date)
    #       @venue = venue
    #       @date = date
    #     end
    #     # The methods below hands back the value of an instance variable and since this is the last and only instance in the variable, it serves as it's return value
    #     def venue
    #       @venue
    #     end
    #     def date
    #       @date
    #     end

    #     def discount(percent)
    #       @price = @price * (100 - percent) / 100.0
    #     end
    #   end


    # th = Ticket.new("Town Hall", "11/12/13")
    # cc = Ticket.new("Convention Center", "12/13/14")
    # puts "We've created two tickets."
    # puts "The first is for a #{th.venue} event on #{th.date}."
    # puts "The second is for an event on #{cc.date} at #{cc.venue}."

    # # returns the following

    # # We've created two tickets.
    # # The first is for a Town Hall event on 11/12/13.
    # # The second is for an event on 12/13/14 at Convention Center.

# EXERCISE 6 - Using the equal sign in method names

# Let's look at a case where something like price was set to one value to start but after object-creation time, it needed to change.

# class Ticket
#   def initialize(venue, date, price)
#     @venue = venue
#     @date = date
#     @price = price
#   end

#   def price
#     @price
#   end

# end

# p th = Ticket.new("Town Hall", "11/12/13", 63.00)

# problems with the code above:
# - initialization is getting really long
# - we have to remember what order to put the many arguments or else the price of ticket could be townhall
#  and as mentioned we don't have a way to change ticket price

# let's revise the method so we can set or reset the existing price and change initialize so it's doesn't expect a figure

class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  # def set_price(amount)
  #   @price = amount
  # end
# same thing and also legal

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end
end

ticket = Ticket.new("Town Hall", "11/23/13")
# ticket.set_price(63.00)
  # method call compatible with "=" sign
  ticket.price=(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}."
# ticket.set_price(72.50)
# puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."

























