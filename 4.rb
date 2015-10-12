@array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336];

puts "Array: #{@array}"

#узнать количество элементов в массиве
puts "Length: #{@array.length}"

#перевернуть массив
puts "Reverse: #{@array.reverse}"

#найти наибольшее число
puts "Max: #{@array.max}"

#найти наименьшее число
puts "Min: #{@array.min}"

#отсортировать от меньшего к большему
puts "Asc: #{@array.sort}"

#отсортировать от большего к меньшему
puts "Desc: #{@array.sort.reverse}"

#удалить все нечетные числа
puts "Even: #{@array.select {|num| num.even?}}"

#оставить только те числа, которые без остатка делятся на 3
puts "Divide: #{@array.select {|num| num%3 == 0}}"

#удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
puts "Unique: #{@array.uniq}"

#разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
puts "Float: #{@array.collect {|num| num.to_f/10 }}"

#получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
puts "English: #{@array.select { |num| num.between?(1, 26) }.collect {|num| ('a'..'z').to_a[num-1] }}"

#поменять местами минимальный и максимальный элементы массива
def swap
  min = @array.min
  min_i = @array.index(min)
  max = @array.max
  max_i = @array.index(max)
  temp = @array.clone
  temp[min_i] = max
  temp[max_i] = min
  temp
end

puts "Swap: #{swap}"

#найти элементы, которые находятся перед минимальным числом в массиве
def before
  min_i = @array.index(@array.min)
  @array.first(min_i)
end

puts "Before: #{before}"

#необходимо найти три наименьших элемента
puts "First: #{@array.sort.first(3)}"
