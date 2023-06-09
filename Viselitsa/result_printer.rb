class ResultPrinter

	def initialize
		@status_image = []

		current_path = File.dirname(__FILE__)
		counter = 0

		while counter <= 7 do
			file_name = current_path +"/Image/#{counter}.txt"
begin
			#if File.exist?(file_name)
				f = File.new(file_name)
				@status_image << f.read
				f.close
				#else
				#@status_image << "\n[ Изображение не найдено ]\n"				
			rescue Errno::ENOENT
				puts "виселица не загрузилась)))"
			end

			counter += 1

		end 			
	end

	def print_status(game)
		cls
			puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"

			puts "Ошибки (#{game.errors}): #{game.bad_letters.join(', ')}"

			print_viselitsa(game.errors)

			if game.errors >= 7
				puts "Вы проиграли :(. Загаданное слово #{game.letters.join}"
			else
		  		if (game.letters - game.good_letters).empty?
		    		puts "Поздравляем, вы выиграли!\n\n"
		   		else
		      		puts 'У вас осталось попыток: ' + (7 - game.errors).to_s
		    	end
			end
	end

	def get_word_for_print(letters, good_letters)
	  result = ''

	  for item in letters do
	    if good_letters.include?(item)
	      result += item + ' '
	    else
	      result += '__ '
	    end
	  end

	  return result
	end
	
	def cls
		  system('cls')
	end
	
	def print_viselitsa(errors)
		 puts @status_image[errors]
	end
end