def det(arr)
	result = 0
	for i in 0..arr.length-1 do
		# deep_copy creation
		arr_ = Marshal.load(Marshal.dump(arr))
		if (arr[0].length === 2)
			return (arr[0][0].to_i * arr[1][1].to_i - arr[1][0].to_i * arr[0][1].to_i)
		else
			arr_.delete_at(0)
			arr_.each do |element| element.delete_at(i) end
			result += (-1)**(1+i+1) * arr[0][i].to_i * det(arr_)
			i += 1
		end
	end
	return result
end

puts "Введите матрицу"

arr = []
str = "empty"

while not(str.eql?("")) do 
str = gets.chomp
if not(str.empty?) then arr.push(str.split(" ")) end
end

# ввести двойной пробел

# проверка на квадратную матрицу (на n и на не единичную)
columns = arr.length;
flag = true;
arr.each do |el| if el.length != columns then flag = false end
	 end
 
if (flag)
	result = det(arr)
	puts "Определитель матрицы: #{result}"
else puts "Введена не квардратная матрица"
end 