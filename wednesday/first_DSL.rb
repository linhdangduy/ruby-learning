def event(description)
	puts "ALERT: #{description}" if yield
end

load 'events.rb'

proc = Proc.new do |x, y|
	x + y
end

puts proc.call 1, 2