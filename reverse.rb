a = Array.new
b = 0
while b <= 9
	b = b + 1
	a << b
end
puts "Старый массив " + a.to_s

b = []

for item in a do
	
	b.unshift(item)

end

puts "Новый массив " + b.to_s