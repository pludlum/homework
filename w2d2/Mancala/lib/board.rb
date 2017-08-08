class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    cups = Array.new(14) { [:stone, :stone, :stone, :stone] }
    cups[6] = []
    cups[13] = []
    cups
  end

  def valid_move?(start_pos)
    unless start_pos.between?(1, 6) || start_pos.between?(8, 13)
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    hand = @cups[start_pos].dup
    @cups[start_pos] = []

    pos = start_pos
    until hand.empty?
      pos = (1 + pos) % 14
      next if pos == 13 && current_player_name == @name1
      next if pos == 6 && current_player_name == @name2
      @cups[pos] << hand.pop
    end

    render
    next_turn(pos)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|cup| cup.empty? }
    return true if @cups[7..12].all? {|cup| cup.empty? }
    false
  end

  def winner
    case @cups[6].length <=> @cups[13].length
    when 1
      @name1
    when -1
      @name2
    when 0
      :draw
    end
  end

end
