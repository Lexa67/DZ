require_relative 'strong_man'

first_man = StrongMan.new
second_man = StrongMan.new
third_man = StrongMan.new

2.times do
	first_man.muscul_up('biceps')
end

3.times do
	first_man.muscul_up('triceps')
end

7.times do
	first_man.muscul_up('rectus')
end

4.times do
	second_man.muscul_up('biceps')
end

3.times do
	second_man.muscul_up('triceps')
end

5.times do
	second_man.muscul_up('rectus')
end

6.times do
	third_man.muscul_up('biceps')
end

4.times do
	third_man.muscul_up('triceps')
end

4.times do
	third_man.muscul_up('rectus')
end
first_man.show_result

second_man.show_result

third_man.show_result