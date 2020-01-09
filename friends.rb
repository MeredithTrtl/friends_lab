def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  food_liked = person[:favourites][:snacks]
  if food_liked.include?(food)
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(person1, person2, money)
  person1[:monies] -= money
  person2[:monies] += money
end

def everyones_snacks(people)
  snacks = []
  for person in people
    snacks.push(person[:favourites][:snacks])
  end
  return snacks.flatten
end

def find_no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].length < 1
      no_friends.push(person[:name])
    end
  end
  return no_friends
end
