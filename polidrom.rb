slovo = STDIN.gets.strip.downcase

slovo_s = slovo.delete('?, !`~;:"\|/][}{><.,')

polidrom = slovo_s.reverse

if polidrom == slovo_s
	puts"Это полидром!"
else
	puts "Это не полидром!"
end

# a = "cute"

# if a =~ /^c/
# 	puts "poriadok"
# end

# if a.index("c") == 0
# 	puts "toghe"
# end