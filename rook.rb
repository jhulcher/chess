require_relative "sliders"

class Rook < Sliders

  def initialize(board, pos, color)
    super
    @type = "♜ "
  end

  def pos_move?(end_pos)
    @current_pos[0] == end_pos[0] || @current_pos[1] == end_pos[1]
  end

end
