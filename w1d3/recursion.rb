
def sum_to(num)
  return num if num == 1
  num + sum_to(num - 1)
end

def add_numbers(arr)
  return arr[0] if arr.length == 1
  arr.pop + add_numbers(arr)
end

def gamme_fnc(num)
  if num == 0
    nil
  elsif num == 1
    1
  else
    (num - 1) * gamme_fnc(num - 1)
  end
end

def ice_cream_shop(flavors, favorite)
  if flavors.empty?
    false
  elsif flavors.pop == favorite
    true
  else
    ice_cream_shop(flavors, favorite)
  end
end

def reverse(string)
  return string[0] if string.length == 1
  string.slice!(-1) + reverse(string)
end
