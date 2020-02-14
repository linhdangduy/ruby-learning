puts "setup instruction"

setup do
	puts "Setting up sky"
	@sky_height = 100
end

setup do
	puts "Setting up mountains"
	@mountains_height = 200
end

event "the sky is falling" do
	@sky_height < 300
end

event "it's getting closer" do
	@sky_height < @mountains_height
end

event "whoops... too late" do
	@sky_height < 0
end

event 'lalala' do
	@x = 1
	puts "lalala: #{@x}"
end

event 'puts x' do
	# @x = @x + 1
	puts "puts x: #{@x}"
end
