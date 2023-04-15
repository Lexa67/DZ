current_path = File.dirname(__FILE__)

foreheads = current_path + '/foreheads.txt'
eyes = current_path + '/eyes.txt'
noses = current_path + '/noses.txt'
mouths = current_path + '/mouths.txt'

if File.exist?(foreheads)
	f = File.open(foreheads)
	forehead = f.readlines
	f.close
else
	abort "Файл не найден"
end

if File.exist?(eyes)
	f = File.open(eyes)
	eye = f.readlines
	f.close
else
	abort "Файл не найден"
end

if File.exist?(noses)
	f = File.open(noses)
	nose = f.readlines
	f.close
else
	abort "Файл не найден"
end

if File.exist?(mouths)
	f = File.open(mouths)
	mouth = f.readlines
	f.close
else
	abort "Файл не найден"
end



puts "#{forehead.sample}"
puts "#{eye.sample}"
puts "#{nose.sample}"
puts "#{mouth.sample}"