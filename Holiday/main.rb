if File.exist?("./holidays.txt")
  f = File.new("./holidays.txt")
  holidays = f.readlines
  f.close
end

for day in holidays
  day.chomp!
end

time = Time.now
puts time.inspect


week_day = time.wday
date = time.strftime("%d.%m")

if week_day == 0 || week_day == 6
  puts 'Сегодня выходной!'
else
  if holidays.include?(date)
    puts 'Сегодня выходной!'
  else
    puts 'Сегодня будний день, за работу!'
  end
end
