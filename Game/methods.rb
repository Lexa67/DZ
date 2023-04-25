require 'net/http'

def get_random_regexp_string
	patterns = ['торф', 'мотор', 'крыша', 'труба', 'крик']

	pattern = patterns.sample

	letter = pattern.split('').sample

	return pattern.gsub(letter, '.')
end

def word_exists?(word)
  # Формируем адрес страницы для проверки и записываем в переменную url.
  uri = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(word) 

  #Для использования в Ruby 3.0 и выше необходимо использовать следующий код. Делает тоже самое, что и net/http.
  #url = Addressable::URI.encode("https://ru.wiktionary.org/wiki/#{word}")

  # Достаем содержимое страницы по указанному адресу и записываем в переменную
  # wiktionary_page. Обратите внимание, что мы меняем кодировку на utf-8, чтобы
  # мы могли корректно работать с русскими буквами.
  wiktionary_page = Net::HTTP.get(
    URI(uri)
  ).force_encoding('UTF-8')

  #Для использования в Ruby 3.0 и выше необходимо использовать следующий код.
  # Encode убрали выше для использования в gem addressable

  # wiktionary_page = Net::HTTP.get(
  #    URI.parse(url)
  #  ).force_encoding('UTF-8')

  # С помощью регулярного выражения проверяем, есть ли на странице текст о том,
  # что такого слова нет.
  if wiktionary_page =~ /текст на данной странице отсутствует/
    # Если статьи про слово нет, значит надо вернуть false, такого слова нет
    return false
  else
    # Если такой текст на странице не найдет, значит статья есть и слово можно
    # засчитывать. Возвращаем true.
    return true
  end
end

# Метод, который формирует строку-шаблон типа "с.ат"
def random_regexp_string
  # Берем несоклько реально существующих слогов (можете дописать свои)
  patterns = ['торф', 'скат', 'свал', 'крик', 'спир']

  # Выбираем произвольных слог (например, скат)
  pattern = patterns.sample

  # Выбираем произвольную букву в нем (например, с или т)
  letter = pattern.split('').sample

  # Заменяем все вхождения этой буквы на точку (например, .кат или ска.)
  return pattern.gsub(letter, '.')
end