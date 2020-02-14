a = Proc.new { |x| x + 1 }
puts a.call(2)

b = lambda { |x| x + 2 }
puts b.class
puts b.call(2)

c = ->(x) { x + 3 }
puts c.class
puts c.call(2)

def math(a, b)
	yield(a, b)
end

def do_math(a, b, &operation)
	math(a, b, &operation)
end

puts do_math(1, 2) {|x, y| x + y }

def my_method(&the_proc)
	the_proc
end

p = my_method {|name| "hello, #{name}"}
puts p.call("bill")

# proc -> block
def your_method(greeting)
	"#{greeting}, #{yield}!"
end

my_proc = proc { "Bill" }
puts your_method("Hello", &my_proc)