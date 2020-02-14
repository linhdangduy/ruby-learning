class CleanRoom
	def current_temperature
		30
	end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
	if current_temperature < 20
		puts "Clean room"
	end
end

# A Clean Room is just an ENVIRONMENT	where you can evaluate your blocks.
# it can expose a few useful methods that the block can call
# However, a ideal CleanRoom doesn't have many methdos or instance variables, because 
# the names of those methods and instance variables could clash with
# the name in the environment that the blocks come from/

# Blank Slates - BasicObject usually make for good Clean Rooms

