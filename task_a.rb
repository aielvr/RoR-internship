puts "Введите коэффициенты квадратного уравнения (a,b,c)"
str = gets
if str.chomp.empty? then puts "Неверный формат введенных данных"
else
	arr = str.split(' ')
	if arr.length < 3 then puts "Введено неверное количество коэффициентов"
	else
		a = arr[0].to_f
		b = arr[1].to_f
		c = arr[2].to_f
		D = b**2 - 4*a*c
		if D > 0 then
			x = (-b + Math.sqrt(D))/ 2*a
			x_ = (-b - Math.sqrt(D))/ 2*a
			puts "Дискриминант: #{D}. Корни уравнения: #{x}, #{x_}"
		elsif D == 0 then
			x = (-b + Math.sqrt(D))/ 2*a
			puts "Дискриминант: #{D}. Корень уравнения: #{x}"
		else puts "Дискриминант: #{D}. Корней нет"
		end  
	end 
end
