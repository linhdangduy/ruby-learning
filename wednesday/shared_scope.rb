class Linh
	def define_methods
		shared = 0

		Kernel.send :define_method, :counter do
			shared
		end

		Kernel.send :define_method, :inc do |x|
			shared += x
		end

		# define_method :my_counter do
		# 	shared
		# end
	end
end

Linh.new.define_methods
puts counter
puts inc(4)
puts counter

puts my_counter

puts respond_to? :my_counter
# what is `define_method` method?

