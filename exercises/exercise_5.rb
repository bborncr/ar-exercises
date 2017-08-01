require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum("annual_revenue")

@big_earner_count = Store.where("annual_revenue > ?", 1000000).count

puts "Total revenue from all stores: $#{@total_revenue}"
puts "Number of stores generating more than $1M in annual sales: #{@big_earner_count}"

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
