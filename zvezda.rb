def zvezda(how_many)

a = ""
	while a.length < how_many
		a += "*"
	end
puts a
end

puts "Солько вам звездочек?"
stars = gets.to_i

puts "Ваши звезды!"
zvezda stars
