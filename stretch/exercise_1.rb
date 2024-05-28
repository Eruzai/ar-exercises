require_relative '../setup'

puts "Exercise 1"
puts "----------"

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

@store1 = Store.find_by(id: 1)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@employee1 = Employee.find_by(id: 1)

puts @employee1.password
