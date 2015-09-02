puts "My advice for your hand will be:
H =	Hit
S	= Stand
P	= Split
Dh= Double if possible, otherwise Hit
Ds= Double if possible, otherwise Stand"
puts ""
puts "User, enter the value of your first card. Enter 10 for Jack, Queen, or King. Enter A for Ace. "
  first = gets.chomp

puts "User, enter the value of your second card. Enter 10 for Jack, Queen, or King. Enter A for Ace. "
second = gets.chomp
puts "User, enter the value of the dealer's card. Enter 10 for Jack, Queen, or King. Enter A for Ace. "
dealer = gets.chomp

istherea = Array.[]
if
  first == "A"
  istherea << "A"
  first = 11
else
  first = first.to_i
  istherea << 0
end

if
  second == "A"
  istherea << "A"
  second = 11
else
  second = second.to_i
  istherea << 0
end

if
  dealer == "A"
  dealer = 11
else
  dealer = dealer.to_i
end

puts istherea

if istherea[0] == istherea[1]
  puts "pair hand"
elsif
  istherea.include?("A")
  puts "soft table"
else
  puts "hard table"
end

total = first + second + dealer

puts total
