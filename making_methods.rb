def reverse_string(stuff)
	new_string = ""
	y = stuff.length - 1
	for x in (0...stuff.length) 
		new_string[x] = stuff[y-x]
	end
	return new_string
end


def upcase(stuff)

	new_string = ""
	x = 0
	stuff.each_char do |i|
		new_string[x] = i.capitalize
		x+=1
	end
	return new_string

end

def insert(stuff, index, other)

	new_string = ""
	x = 0
	mod = 0
	stuff.each_char do |i|
		if x == index
			new_string[x] = other
			mod = 1
		end
		
		new_string[x+mod] = i
		puts new_string
	
		x+=1
	end
	return new_string
end

def delete(array, obj)
	new_array = []

	array.each do |x|

		if x == obj
		else
			new_array.push(x)
		end
	end
	return new_array
end

def join(array)

	new_string = ""
	x = 0
	array.each do |obj|
		new_string[x] = obj.to_s
		x+=1
	end
	return new_string
end


def pop(array)

	new_string = ""
	if array == []
		return nil
	end
	new_string = array.last.to_s
	return new_string
end


