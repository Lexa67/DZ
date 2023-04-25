
if File.exist?('./slova.txt')
	f = File.new('./slova.txt')
	file = f.readlines
	f.close
end
aaaaa = []
file.each do |word|
	long_string = word.chomp.split.length
	if long_string == 1
 		a = word.chomp.length
 		if a == 3
 		aaaaa << word
 	end
 	else
 		b = word.to_s.split
 		b.each do |c|
 			if c.length == 3
 				aaaaa << c
 			end
 		end
	end
end

puts aaaaa.length



puts "______________________________"

text = File.read('./slova.txt')

# Очищаем текст от знаков препинания
cleaned_text = text.gsub(/[,\(\)\.\-;:\?\!]/, '')

# Разбиваем текст на слова с помощью split
words = cleaned_text.split

# Считаем слова, удовлетворяющие регулярному выражению,
# с помощью метода count
puts words.count { |w| w =~ /^\S{3}$/ }
