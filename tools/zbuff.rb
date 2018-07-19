
def zbuffer_value(bits, near, far, dist) 
	c = (1<<bits).to_f
	a = far / (far - near)
	b = far * near / (near - far)
	{depth:(c * (a + b / dist)).to_i, resolution: dist - b/(b/dist - 1/c)}
end

puts zbuffer_value(16, 50.0, 100000.0, 680)