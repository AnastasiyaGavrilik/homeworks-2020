require_relative 'arr.rb'

class App
  arr = [1, 2, 3, 4]
  puts 'my_each'
  arr.my_each { |el| puts el + 1 }
  puts 'my_map'
  puts arr.my_map
  puts 'my_select'
  arr.my_select { |el| puts el > 2 }
end
