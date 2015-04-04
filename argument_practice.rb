# def default_args(a,b,c=1,d)
#  puts "Values of variables: ",a,b,c
# end

# p default_args(2,4)
# Throws an error because the 4th is required

def mixed_args(a,b,*c,d)
 puts "Arguments:"
 p a,b,c,d
end

# mixed_args(1,2,3,4,5)

# p mixed_args(1,2,3)

def args_unleashed(a,b=1,*c,d,e)
 puts "Arguments:"
 p a,b,c,d,e
end

# p args_unleashed(1,2,3,4,5)

p args_unleashed(1,2,3,4,5,6,7,8)

# guessed return for second args_unleashed
# 1
# 2
# [3,4,5,6]
# 7
# 8
