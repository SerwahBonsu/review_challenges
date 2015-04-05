# # Global Scope
# $gvar = "I'm a global!"

# class C
#   def examine_global
#     # $gvar = "love"
#       # I added this; looks like the method closest to the call always wins!
#     puts $gvar
#   end
# end
# c = C.new
# p c.examine_global

# Local Scope

# class C
#     a = 1
#   def local_a
#     a=2
#   puts a
#   end
#   puts a
# end

# c = C.new
# c.local_a

# Output
# 1
# 2

# Class Scope

class Parent
  @@value = 100
end

class Child < Parent
  @@value = 200
end

class Parent
  puts @@value
end
