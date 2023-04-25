class WordReader
	def read_from_file(file_name)
		#if File.exist?(file_name)
		begin
			f = File.new(file_name)
			lines = f.readlines
			f.close
			s = lines.sample.chomp
			#return s
		#else
	#		return nil
		rescue Errno::ENOENT => error
			abort "Файл не найден: " + error.message
		end
	end
end
