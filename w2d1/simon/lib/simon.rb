class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
    @timer = 1
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
  end

  def take_turn
    show_sequence
    input = require_sequence
    if input == @seq
      round_success_message
      @sequence_length += 1
      @timer *= 0.9
    else
      @game_over = true
    end
  end

  def show_sequence
    add_random_color
    system 'clear'
    @seq.each do |color|
      puts color
      sleep(@timer)
      system 'clear'
      sleep(@timer)
    end
  end

  def require_sequence
    puts "Repeat the colors in order:"
    input = gets.chomp
    input.split
  end

  def add_random_color
    @seq << COLORS[rand(4)]
  end

  def round_success_message
    puts "CORRECT. Keep going!"
    sleep(2)
  end

  def game_over_message
    puts "INCORRECT. You reached #{@sequence_length} color(s)."
  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1
    @timer = 1
  end
end

# Uncomment below to run game on

if $PROGRAM_NAME == __FILE__
  game = Simon.new
  game.play
end
