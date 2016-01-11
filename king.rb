require_relative "sliders"

class King < Sliders

  def initialize(board, pos, color)
    super
    @type = "♚ "
  end

  def pos_move?(end_pos)
    (@current_pos.first - end_pos.first).abs <= 1 &&
    (@current_pos.last - end_pos.last).abs <= 1
  end

end
