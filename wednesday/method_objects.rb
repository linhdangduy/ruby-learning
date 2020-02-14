class MyClass
	def initialize(value)
		@x = value
	end

	def my_method
		@x
	end
end

object = MyClass.new(1)
# the Kernel method `method`
m = object.method :my_method
# execute the method object later
puts m.call

# A method is similar to a block or a lambda
# Method -> Proc: Method#to_proc
# block -> Method: define_method
# different between lamdbas and methods: a lambda is evaluated in scope it's
#  defined in, while a Method is evaluated in the scope of its object
