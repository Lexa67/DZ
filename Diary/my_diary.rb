require "pony"
require "io/console"

puts 'Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?'
puts 'Я сохраню всё, что ты напишешь до строчки "end" в файл. А потом отправлю на почту :)'
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
	line = STDIN.gets.chomp
	all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d")

time_string = time.strftime("%H:%M")

separator = "_____________________________________"

file = File.new(current_path + "/" + file_name + ".txt", "a")

file.print("\n" + time_string + "\n")

all_lines.pop

stroka = ""

for item in all_lines do
	file.puts(item)
	stroka = stroka + item.to_s + "\n"
end
stroki = "Новая запись в " + time_string + "\n" + stroka + "\n"
file.puts(separator)

file.close

puts "..."
puts "Ваша запись сохранена в файл #{file_name}.txt"
puts "Запись сохранена в #{time_string}"

my_mail = "3aj4ik504@gmail.com"

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

tema = "Дневник #{file_name}"

Pony.mail(
{
	:subject => tema,
	:body => stroki,
	:to => send_to,
	:from => my_mail,


	:via => :smtp,
	:via_options => {
								  :address => 'smtp.gmail.com',
								  :port =>'587',
								  :enable_starttls_auto => true,
								  :user_name => my_mail,
								  :password => password,
								  :authentication => :plain,
								}
}
)
puts "Письмо успешно отправлено!"