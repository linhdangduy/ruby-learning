module MyModule
	def my_method
		42
	end
end

unbound = MyModule.instance_method(:my_method)
puts unbound.class

# UnboundMethods are like Methods that have been detach from thier original class or
#  module. Turn a Method into an UnboundMethod: Method#unbind

# you can't call an UnboundMethod, but you can use it to generate a normal
# method that you can call


String.class_eval do
	define_method :another_method, unbound
end

puts "abc".another_method