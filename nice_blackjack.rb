#nice_blackjack

#Sorry, I don't understand Blackjack as well as I thought I did,
#so I only made clauses for hit and stand.

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

deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack", "Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack", "Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack", "Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack", "Ace"]



puts "User, I am your BLACKJACK DEALER!
I will deal your cards and my card,
then I will give you advice on what to do next.
You have the best odds of winning if you follow my advice!
My advice for your hand will be:
*  H = Hit
*  S = Stand
*  P = Split
* Dh = Double if possible, otherwise Hit
* Ds = Double if possible, otherwise Stand"
puts ""
total = 0
until total >=21
  first = deck.sample
  puts first
  deck = deck.delete_if do |x| x == first end
  #puts deck
  second = deck.sample
  puts second
  deck = deck.delete_if do |x| x == second end
  #puts deck
  dealer = deck.sample
  puts dealer
  deck = deck.delete_if do |x| x == dealer end
  puts "User, I have dealt you a #{first} and a #{second}. The dealer's card is a #{dealer}."

  istherea = Array.[]
  if
    first == "Ace"
    istherea << "A"
    first = 11
  else
    first = first.to_i
    istherea << 0
  end

  if
    second == "Ace"
    istherea << "A"
    second = 11
  else
    second = second.to_i
    istherea << 0
  end

  if
    dealer == "Ace"
    dealer = 11
  else
    dealer = dealer.to_i
  end

  total = first + second

  #puts istherea
  #puts dealer
  #puts total

  if istherea[0] == istherea[1] && istherea.include?("A")
    answer = pair[total][dealer - 2]
    puts answer
  elsif istherea.include?("A")
    answer = soft[total][dealer - 2]
    puts answer
  elsif !istherea.include?("A")
    answer = hard[total][dealer - 2]
    puts answer
  else
  end

  puts "You should #{answer} for the best chance of winning."
  puts "What do you want to do?"
end
