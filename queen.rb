require_relative "sliders"

class Queen < Sliders

  def initialize(board, pos, color)
    super
    @type = "♛ "
  end

  def pos_move?(end_pos)
    ((@current_pos.first - end_pos.first).abs == (@current_pos.last - end_pos.last).abs) ||
    (@current_pos[0] == end_pos[0] || @current_pos[1] == end_pos[1])
  end

end
