user = gets.to_i


a = Array.new(user + 1) {|i| i.to_i}
d = 0
b = a.each do |c|

d = d + c

end
puts  "Сумма равно #{d}"
