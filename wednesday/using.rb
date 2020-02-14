def using(r)
	yield
ensure
	r.dispose
end
