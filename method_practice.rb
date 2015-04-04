

ticket = Object.new

def ticket.date
 "01/02/03"
end


def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end

# print "This ticket is for: "
# print ticket.event + ", at "
# print ticket.venue + ", on "
# puts ticket.date + "."
# print "The performer is "
# puts ticket.performer + "."
# print "The seat is "
# print ticket.seat + ", "
# print "and it costs $"
# puts "%.2f." % ticket.price


puts "This ticket is for: #{ticket.event}, at #{ticket.venue}." +
 "The performer is #{ticket.performer}." +
 "The seat is #{ticket.seat}, " +
 "and it costs $#{"%.2f." % ticket.price}"

print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
 puts ticket.__send__(request)
else
 puts "No such information available"
end

# def ticket.availability_status
#  "sold"
# end

# def ticket.available?
#  false
# end

# if ticket.available?
#  puts "You're in luck!"
# else
#  puts "Sorry--that seat has been sold."
# end
# **************************Additional ruby practice********************

# a = Object.new
# b = a
# puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

# string_1 = "Hello"
# string_2 = "Hello"
# puts "string_1's id is #{string_1.object_id}."
# puts "string_2's id is #{string_2.object_id}."

# obj = Object.new
# if obj.respond_to?("talk")
#  obj.talk
# else
#  puts "Sorry, the object doesn't understand the 'talk' message."
# end

# def obj.talk
#   puts "I am an object."
#   puts "(Do you object?)"
# end
