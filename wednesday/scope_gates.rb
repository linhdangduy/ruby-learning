# three places where a program leaves the previous scope behind 
#  and opens a new one:
#   - class definitions
#   - model definitions
#   - methods
# the code in a class or module definition is executed immediately
# the code in method definition is executed later, when you call the method

# how do you pass a variable through one of these spots?

my_var = "Success"

class MyClass
	def my_method
		yield
	end
end

a = MyClass.new
a.my_method { puts my_var }

# replace class with something else that is not a Scope Gate: a method call
# capture my_var in a closure and pass that closure to the method
YourClass = Class.new do
	puts "#{my_var} in the class definition"

	define_method :my_method do
		puts "#{my_var} in the method "
	end
end

b = YourClass.new.my_method
