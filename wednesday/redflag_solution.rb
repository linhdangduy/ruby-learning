def event(description, &block)
	@events << { :description => description, :condition => block }
end

@events = []

def setup(&block)
	@setups << block
end

@setups = []

load 'setup_event.rb'

@events.each do |event|
	@setups.each do |setup|
		setup.call
	end
	puts "ALERT: #{event[:description]}" if event[:condition].call
end

# still use top-level variables: @events, @setups
