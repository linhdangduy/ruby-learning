v1 = 1

class MyClass
	v2 = 2
	puts local_variables # v2
	def my_method
		v3 = 3
		puts local_variables # the code is not executed yet
	end
	puts local_variables # v2
end

obj = MyClass.new
obj.my_method # v3
obj.my_method # v3
puts local_variables # v1, obj

# java and C# allow "inner scopes" to see variables from outer scopes
# but that kind of nested visibility doesn't happen in Ruby

# -> as soon as you enter a new scope, the previous bindings are replaced
# by a new set of bindings

# a global variable ($var) can be accessed from any part of code
#  so use them with attention
# a top-level instance variables are safer than global variables,
#  it is variable of the `main`

# important point:
#   Whenever the program changes scope, some bindings are replaced 
#   by a new set of bindings".
#