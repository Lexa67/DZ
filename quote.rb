current_path = File.dirname(__FILE__)

file_path = current_path + '/Data/duotes.txt'
if File.exist?(file_path)
	f = File.new(file_path)
	lines = f.readlines
	f.close
	puts lines.sample
else
	puts "Файл не найден"
end
