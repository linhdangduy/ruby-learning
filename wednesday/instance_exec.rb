class C
	def initialize
		@x = 1
	end
end

class D
	# instance variables depend on self
	def twisted_method
		@y = 2
		# instance_eval switch self to receiver `C`
		# all instance variables in the caller D fall out of scope
		C.new.instance_eval { "@x: #{@x}, @y: #{@y}"}
	end

	# to merge @x and @y in the same scope, use instance_exec to pass
	# @y's value to the block
	def second_twisted_method
		@z = 2
		C.new.instance_exec(@z) {|z| "@x: #{@x}, @z: #{z}"}
	end
end

puts D.new.twisted_method
puts D.new.second_twisted_method
