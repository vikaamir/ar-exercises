require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ApplicationRecord
  has_many :employees
  
end

class Employee < ApplicationRecord
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)


@store1.employees.create(
  first_name: "Berdem",
  last_name: "Doe",
  hourly_rate: 45
)

# Creating employees for @store2 (Richmond)
@store2.employees.create(
  first_name: "Vika",
  last_name: "Amir",
  hourly_rate: 28
)