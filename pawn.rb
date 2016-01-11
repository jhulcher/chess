require_relative "sliders"

class Pawn < Sliders

  def initialize(board, pos, color)
    super
    @type = "♟ "
    if pos.first == 1
      @direction = 1
    else
      @direction = -1
    end
  end

  def pos_move?(end_pos)
    if !(@board.[](end_pos).nil?)
      @current_pos.first + @direction == end_pos.first &&
      (end_pos.last - @current_pos.last).abs == 1
    elsif @current_pos.first == 1 && @direction == 1
      end_pos == [2, @current_pos.last] || end_pos == [3, @current_pos.last]
    elsif @current_pos.first == 6 && @direction == -1
      end_pos == [5, @current_pos.last] || end_pos == [4, @current_pos.last]
    else
      @current_pos.first + @direction == end_pos.first &&
      @current_pos.last == end_pos.last
    end
  end

end
