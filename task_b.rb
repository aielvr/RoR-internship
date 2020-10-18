puts "Введите название товара, цену за единицу и количество"
hash = {}
name = 'старт'

while not(name == 'стоп') do 
	str = gets
	if not(str.chomp.empty?) then
		arr = str.split(' ')
		name = arr[0].chomp.downcase
		if arr.length < 3 && not(name == 'стоп') then puts "Неверный формат введенных данных"
		else hash[:"#{name}"] = { price: arr[1].to_f, quantity: arr[2].to_f }
		end
	else puts "Неверный формат введенных данных"
	end
end

hash.delete(:стоп)

sum = 0
hash.keys.each do
	|key| puts "Наименование: #{key}
		    Цена за единицу: #{hash[key][:price]},
                    Количество: #{hash[key][:quantity]},
                    Общая стоимость: #{hash[key][:price] * hash[key][:quantity]}"
	sum += hash[key][:price] * hash[key][:quantity]
end

puts "Итоговая стоимость продуктовой корзины: #{sum}"