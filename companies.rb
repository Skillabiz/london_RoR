require 'csv'

arr = %w(this is an array I want appending)

CSV.open("test.csv", "a+") do |csv|
  csv << arr
  csv << ["another", "row"]
  
end