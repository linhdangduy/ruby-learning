# when you define block, it simply grabs the bindings 
# that are there at that moment
# and then it carries those bindings along when you 
# pass the block into a method

def my_method
	x = "Goodbye" # the bindings of method, not visible in the block
	yield("cruel")
end

x = "Hello"
a = my_method {|y| "#{x}, #{y} world" }
puts a

# a block captures the local bindings and carries them along with it

