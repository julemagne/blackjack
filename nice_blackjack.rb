# nice_blackjack

# Sorry, I don't understand Blackjack as well as I thought I did,
# so I only made clauses for hit and stand.

hard = {
  5 => %w(H H H H H H H H H H),
  6 => %w(H H H H H H H H H H),
  7 => %w(H H H H H H H H H H),
  8 => %w(H H H Dh Dh H H H H H),
  9 => %w(Dh Dh Dh Dh Dh H H H H H),
  10 => %w(Dh Dh Dh Dh Dh Dh Dh Dh H H),
  11 => %w(Dh Dh Dh Dh Dh Dh Dh Dh Dh Dh),
  12 => %w(H H S S S H H H H H),
  13 => %w(S S S S S H H H H H),
  14 => %w(S S S S S H H H H H),
  15 => %w(S S S S S H H H H H),
  16 => %w(S S S S S H H H H H),
  17 => %w(S S S S S S S S S S),
  18 => %w(S S S S S S S S S S),
  19 => %w(S S S S S S S S S S),
  20 => %w(S S S S S S S S S S),
  21 => %w(S S S S S S S S S S) }

soft = {
  13 => %w(H H Dh Dh Dh H H H H H),
  14 => %w(H H Dh Dh Dh H H H H H),
  15 => %w(H H Dh Dh Dh H H H H H),
  16 => %w(H H Dh Dh Dh H H H H H),
  17 => %w(Dh Dh Dh Dh Dh H H H H H),
  18 => %w(S Ds Ds Ds Ds S S H H S),
  19 => %w(S S S S Ds S S S S S),
  20 => %w(S S S S S S S S S S),
  21 => %w(S S S S S S S S S S) }

pair = {
  4 => %w(P P P P P P H H H H),
  6 => %w(P P P P P P P H H H),
  8 => %w(H H P P P H H H H H),
  10 => %w(Dh Dh Dh Dh Dh Dh Dh Dh H H),
  12 => %w(P P P P P P H H H H),
  14 => %w(P P P P P P P H S H),
  16 => %w(P P P P P P P P P P),
  18 => %w(P P P P P S P P S S),
  20 => %w(S S S S S S S S S S),
  22 => %w(P P P P P P P P P P) }

deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack', 'Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack', 'Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack', 'Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack', 'Ace']

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
puts ''
total = 0
loop do
  first = deck.sample
  #puts first
  deck = deck.delete_if { |x| x == first }
  # puts deck
  second = deck.sample
  #puts second
  deck = deck.delete_if { |x| x == second }
  # puts deck
  dealer = deck.sample
  #puts dealer
  deck = deck.delete_if { |x| x == dealer }
  # puts deck
  puts "User, I have dealt you a #{first} and a #{second}. The dealer's card is a #{dealer}."

  first = 10 if first == 'King' || 'Queen' || 'Jack'
  second = 10 if second == 'King' || 'Queen' || 'Jack'
  dealer = 10 if dealer == 'King' || 'Queen' || 'Jack'

  istherea = Array.[]
  if
    first == 'Ace'
    istherea << 'A'
    first = 11
  else
    first = first.to_i
    istherea << 0
  end

  if
    second == 'Ace'
    istherea << 'A'
    second = 11
  else
    second = second.to_i
    istherea << 0
  end

  if
    dealer == 'Ace'
    dealer = 11
  else
    dealer = dealer.to_i
  end

  total = first + second

  # puts istherea
  # puts dealer
  #puts total

  if istherea[0] == istherea[1] && istherea.include?('A')
    answer = pair[total][dealer - 2]
    #puts answer
  elsif istherea.include?('A')
    answer = soft[total][dealer - 2]
    #puts answer
  elsif !istherea.include?('A')
    answer = hard[total][dealer - 2]
    #puts answer
    end

  puts "You should #{answer} for the best chance of winning."
  puts 'What do you want to do?'
  reply = gets.chomp
  if reply == 'H'
    hit = deck.sample
    # puts hit
    deck.delete_if { |x| x == hit }
    # puts deck

    puts "User, I have dealt you a #{hit}."
    hit = 10 if hit == 'King' || 'Queen' || 'Jack'

    total += hit
    puts total
    if total == 21
      puts 'You win!'
      break
    elsif total > 21
      puts 'You lose!'
      break
    else
      puts "User, your total is #{total}."
      break
    end
  elsif reply == 'S'
    stay = deck.sample
    #puts stay
    deck.delete_if { |x| x == stay }
    puts "I have dealt another dealer's card, #{stay}."
    stay = 10 if stay == 'King' || 'Queen' || 'Jack'

    dealer_total = dealer + stay
    #The stored value of dealer maybe didn't make it this far?
    if dealer_total == 21
      if total == 21
        'User, you lose.  I have 21.'
        break
      elsif dealer_total >= total
        "User, you lose.  I have #{dealer_total}."
        break
      elsif dealer_total < total
        'User, you win!'
        break
              end
    end
  end
end
