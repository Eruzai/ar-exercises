require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jacob", last_name: "Wattman", hourly_rate: 65)
@store1.employees.create(first_name: "Henry", last_name: "Jackson", hourly_rate: 53)
@store2.employees.create(first_name: "Carly", last_name: "Purim", hourly_rate: 72)
@store2.employees.create(first_name: "Krysta", last_name: "Katnis", hourly_rate: 59)
@store2.employees.create(first_name: "Serina", last_name: "Nornima", hourly_rate: 68)
