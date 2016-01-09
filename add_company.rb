
p "Company name: "
name = gets.chomp
p "Area: "
area = gets.chomp

open('london_RoR.rb', 'a') do |f|
  f << name + " | " + area + "\n"
end