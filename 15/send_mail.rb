require "pony"
require "io/console"

my_mail = "3aj4ik504@gmail.com"

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Какая тема письма?"
tema = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp

begin
Pony.mail(
{
	:subject => tema,
	:body => body,
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
  # Если при отправке произойдет ошибка, выполнение программы продолжится сразу
  # в блоке rescue, соответствующем ошибке, и код, который будет ниже никогда не
  # выполнится. Поэтому значение переменной success останется false.
  success = true

    # rescue => error
    #
    # По умолчанию rescue ловит любую ошибку (кроме фатальных, вроде смерти всей
    # системы, ошибок компиляции и т.д.), информация об ошибке записывается в
    # переменную error.
rescue SocketError
  # Можно не сохранять ошибку в переменную
  puts 'Не могу соединиться с сервером. '
rescue Net::SMTPFatalError => error
  # А можно сохранить и использовать внутри блока rescue, за пределами него —
  # переменная error не существует. Можно получить информацию об ошибке, вызвав
  # у ошибки метод message.
  puts 'Вы некорректно задали параметры письма: ' + error.message
rescue Net::SMTPAuthenticationError => error
  puts 'Неправильный пароль, попробуйте еще: ' + error.message
ensure
  # Содержимое блока ensure выполнится в любом случае (была ошибка или нет) в
  # самом конце, после всех begin и rescue.
  puts "\nМы постарались отправить письмо."
end

# До этих строк кода дело дойдет, если мы правильно поймали ошибку или если
# ошибки не было вовсе. Остается проверить флаг — успешно письмо отправлено или
# нет и сообщить результат пользователю.
if success
  puts "\nИ письмо отправилось!"
else
  puts "\nНо отправка не удалась :("
end