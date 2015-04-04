# EXERCISE 1
  # def say_goodbye
  #  x = "Goodbye"
  #  puts x
  #  # returns nothing unless called
  # end
  # def start_here
  #  x = "Hello"
  #  puts x
  # p say_goodbye
  #  puts "Let's check whether x remained the same:"
  #  puts x
  # end

  # p start_here
    # will return "Hello" outside of method
  # p say_goodbye
    # will return "Goodbye" as long as it is outside of the method

# EXERCISE 2
# str = "Hello"
# abc = str
# puts abc

# EXERCISE 3
# str = "Hello"
# abc = str
# # str.replace("Goodbye")
# abc.replace("hiccups")
# puts str
# puts abc
# replace will replace the value of str AND abc

# def say_goodbye
#  str = "Hello"
# abc = str
# str.replace("Goodbye")
# puts str
# puts abc
# end
# say_goodbye

# EXERCISE 4
def change_string(str)
 str.replace("New string content!")
end

# s = "Original string content!"
# change_string(s)

# puts s

# EXERCISE 5
# s = "Original string content!"
# change_string(s.dup)
# puts s
# =>
# Original string content!

#  EXERCISE 6

s = "Original string content!"
s.freeze
change_string(s)
# throws error
# scope_of_method_definition.rb:45:in `replace': can't modify frozen String (RuntimeError)
#   from scope_of_method_definition.rb:45:in `change_string'
#   from scope_of_method_definition.rb:64:in `<main>'


