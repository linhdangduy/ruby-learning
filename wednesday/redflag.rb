# solution
#  save block passed to setup in a place
#  then when event is call, it will call those object
@setups = []

def setup(&setting)
	@setups << setting
end

def event(description)
	@setups.each { |setting| setting.call }
  puts description if yield
end

load 'setup_event.rb'
