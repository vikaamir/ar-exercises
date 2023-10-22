require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

Store.destroy(3)

store_count = Store.count

puts "Updated stores count: #{store_count}"