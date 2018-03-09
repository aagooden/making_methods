def reverse_string(stuff)
	new_string = ""
	y = stuff.length - 1
	for x in (0...stuff.length) 
		new_string[x] = stuff[y-x]
	end
	return new_string
end


reversed = reverse_string("cheese")
puts reversed
