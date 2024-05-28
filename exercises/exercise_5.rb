require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum("annual_revenue")
puts "Stores total revenue: #{@total_revenue}"

@average_revenue = Store.average("annual_revenue")
puts "Stores average revenue: #{@average_revenue}"

@count_revenue_over_1M = Store.where("annual_revenue > ?", 1000000).count
puts "Stores generating more than 1M in revenue: #{@count_revenue_over_1M}"
