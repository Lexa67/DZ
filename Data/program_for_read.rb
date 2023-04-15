current_path = File.dirname(__FILE__)

puts "Введите название файла!"
name_file = STDIN.gets.to_s.downcase.chomp

loop do
	if name_file == ""
		puts "Введите название файла!"
		name_file = STDIN.gets.to_s.downcase.chomp
	else
		puts "Ваш файл: #{name_file}"
		break
	end
end


file_path = current_path + "/#{name_file}"
nil_s = []

if File.exist?(file_path)
	f = File.open(file_path)
	lines = f.readlines
		
		lines.each do |line|
			if line.chomp == ""
				nil_s << line
			end
		end
		
	f.close
	long = lines.size
else
	abort "Файл не найден"
end

puts "Количество строчек в документе #{long}"
puts "из них пустых: #{nil_s.size}"
puts "Последние 5 строчек с документа #{name_file} \n#{lines.last(5).join}"
