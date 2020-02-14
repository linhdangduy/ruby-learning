class MyClass
	def initialize
		@v = 1
	end
end

obj = MyClass.new

# `instance_eval`: evaluates a block in the context of an object
# the block can access the receiver's private methods and instance variables
obj.instance_eval do
	puts self
	puts @v
end

# the block still see the bindings from the place where it's defined
v = 2
obj.instance_eval { @v = v }
obj.instance_eval { puts @v }

# => Context Probe
# Clearly this break the encapsulation charactistic of OOP
# but it is need in some case
# if the implementation of class is changes, the code with instance_eval
#  may be breaked. So it's you who decided when to accept the risk
#  to use this method
