
# Exercise 1: SELF IN CLASS AND MODULE DEFINITIONS
# # class C
#   puts "Just started class C:"
#   puts self
#   module M
#     puts "Nested module C::M:"
#     puts self
#   end
#     puts "Back in the outer level of C:"
#     puts self
# end

# OUTPUT:

# Just started class C:
# C
# Nested module C::M:
# C::M
# Back in the outer level of C:
# C

# Exercise 2: SELF IN INSTANCE-METHOD DEFINITIONS

# class C
#   def x
#     puts "Class C, method x:"
#     puts self
#   end
# end

# c = C.new
# c.x
# puts "That was a call to x by: #{c}"

# Output : Class C, method x:
# #<C:0x007fc77921c8f0>
# That was a call to x by: #<C:0x007fc77921c8f0>

# Basically translates to : “an instance of C.”

# Exercise 3: SELF IN SINGLETON-METHOD AND CLASS-METHOD DEFINITIONS

# obj = Object.new
# def obj.show_me
#   puts "Inside singleton method show_me of #{self}"
# end

# obj.show_me
# puts "Back from call to show_me by #{obj}"


# Output:
# Inside singleton method show_me of #<Object:0x007febb21484d0>
# Back from call to show_me by #<Object:0x007febb21484d0>

# It makes sense that if a method is written to be called by only one object, that object gets to be self.

# Exercise 4 : Resolving instance variables through self


# class C
#   def show_var
#     @v = "I am an instance variable initialized to a string."
#     puts @v
#   end
#   @v = "Instance variables can appear anywhere...."
# end

# # p C.new.show_var

# Output:
# I am an instance variable initialized to a string.
# nil

# The first @v lies inside the definition block of an instance method of C. This means that each instance of C that calls this method will have its own instance variable @v.

# The second @v c belongs to the class object C.











