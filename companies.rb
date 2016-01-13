require 'csv'

arr = []

puts "Company name: "
company = gets.chomp
p "Location: "
location = gets.chomp
p "Team size: "
size = gets.chomp
p "Company type (agency/ruby as internal service/ruby as product): "
type = gets.chomp
p "Rails? (Yes/No/Unsure) "
rails = gets.chomp
p "Other technologies: "
other_tech = gets.chomp
p "Recruitment webpage: "
recruit = gets.chomp
p "Notes: "
notes = gets.chomp

arr.push(company, location, size, type, rails, other_tech, recruit, notes)

# Append the new company to CSV file
CSV.open("rubycompanies.csv", "a+") do |csv|
  csv << arr
end