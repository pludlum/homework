

fish_tank = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(fishes)
  fish.each do |fish1|
    biggest_fish = true

    fish.each do |fish2|
      biggest_fish = false if fish2.length > fish1.length
    end

    return fish1 if biggest_fish
  end

end

def merge_sort(fishes)
  return self if length <= 1

  mid = fishes.length / 2

  left = fishes[0...mid]
  right = fishes[mid...fishes.length]

  merge_fish(merge_sort(left), merge_sort(right))
end

def merge_fish(left, right)
  result = []

  until left.empty? || right.empty?
    if (left.first.length > right.first.length)
      result << left.shift
    else
      result << right.shift
    end
  end

  result += left + right
end


def dominant_octopus(fish)
  s_fish = merge_sort(fish)

  s_fish.first
end

def linear_octopus(fish)
  biggest_fish = fish[0]

  fish.each do |f|
    biggest_fish = f if f.length > biggest_fish.length
  end

end

def slow_dance(direction, tiles)
  tiles.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles)
  tiles_hash[direction]
end
