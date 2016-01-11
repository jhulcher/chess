require_relative "sliders"

class Bishop < Sliders

  def initialize(board, pos, color)
    super
    @type = "♝ "
  end

  def pos_move?(end_pos)
    (@current_pos.first - end_pos.first).abs == (@current_pos.last - end_pos.last).abs
  end

end
