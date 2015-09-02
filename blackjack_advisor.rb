#blackjack_advisor_normal

hard = {
5 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
6 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
7 => ["H", "H", "H", "H", "H", "H", "H", "H", "H", "H"],
8 => ["H", "H", "H", "Dh", "Dh", "H", "H", "H", "H", "H"],
9 => ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
10 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"],
11 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh"],
12 => ["H", "H", "S", "S", "S", "H", "H", "H", "H", "H"],
13 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
14 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
15 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
16 => ["S", "S", "S", "S", "S", "H", "H", "H", "H", "H"],
17 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
18 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
19 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
21 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]}

soft = {
13 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
14 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
15 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
16 => ["H", "H", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
17 => ["Dh", "Dh", "Dh", "Dh", "Dh", "H", "H", "H", "H", "H"],
18 => ["S", "Ds", "Ds", "Ds", "Ds", "S", "S", "H", "H", "S"],
19 => ["S", "S", "S", "S", "Ds", "S", "S", "S", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
21 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"]}

pair = {
4 => ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"],
6 => ["P", "P", "P", "P", "P", "P", "P", "H", "H", "H"],
8 => ["H", "H", "P", "P", "P", "H", "H", "H", "H", "H"],
10 => ["Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "Dh", "H", "H"],
12 => ["P", "P", "P", "P", "P", "P", "H", "H", "H", "H"],
14 => ["P", "P", "P", "P", "P", "P", "P", "H", "S", "H"],
16 => ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"],
18 => ["P", "P", "P", "P", "P", "S", "P", "P", "S", "S"],
20 => ["S", "S", "S", "S", "S", "S", "S", "S", "S", "S"],
22 => ["P", "P", "P", "P", "P", "P", "P", "P", "P", "P"]}

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

total = first + second

#puts istherea
puts dealer
puts total

index = total - 2

if istherea[0] == istherea[1]
  answer = pair[dealer][total(index)]
  puts answer
elsif
  istherea.include?("A")
  answer = soft[dealer][total(index)]
  puts answer
else
  answer = hard[dealer][total(index)]
  puts answer
end
