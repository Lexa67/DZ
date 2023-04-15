if File.exist?('./Data/duotes.txt')

	f = File.new('./Data/duotes.txt')
	content = f.read

	puts content
else
	puts "Файл не найден"
end