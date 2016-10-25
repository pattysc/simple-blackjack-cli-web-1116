def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.rand(1..11)
  return card
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def hit?(num)
  prompt_user #puts "Type 'h' to hit or 's' to stay"
  if get_user_input == 's'
    return num
  else
    return deal_card + num
  end
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  tot = deal_card + deal_card
  display_card_total(tot)
  return tot
end

def invalid_command
  # code invalid_command here
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  num = initial_round #sum of 2 first cards
  num

  until num > 21
    num = hit?(num) #type h or s, if s return initial_round, if h return new sum
    display_card_total(num) #total is num
  end

  end_game(num)

end
