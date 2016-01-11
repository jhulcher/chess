class Sliders < Piece

  def valid_move?(end_pos)
    return false unless super
    return false if piece_in_path?(end_pos)
    true
  end

  def valid_move!(end_pos)
    return false unless super
    return false if piece_in_path?(end_pos)
    true
  end

  def piece_in_path?(end_pos)
    step = [0, 0]

    if @current_pos.first < end_pos.first
      step = [1, step.last]
    elsif @current_pos.first > end_pos.first
      step = [-1, step.last]
    end

    if @current_pos.last < end_pos.last
      step = [step.first, 1]
    elsif @current_pos.last > end_pos.last
      step = [step.first, -1]
    end

    path = @current_pos.dup

    until path == end_pos
      return true unless @board.[](path).nil? || @current_pos == path
      path = [path.first + step.first, path.last + step.last]
    end

    false
  end

end
