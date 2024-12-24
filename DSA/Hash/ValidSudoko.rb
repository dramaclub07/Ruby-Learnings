def is_valid_sudoku(board)
  rows = Array.new(9) { Hash.new(0) }
  cols = Array.new(9) { Hash.new(0) }
  subgrids = Array.new(9) { Hash.new(0) }

  (0...9).each do |i|
    (0...9).each do |j|
      num = board[i][j]
      next if num == '.'

      subgrid_index = (i / 3) * 3 + j / 3

      if rows[i][num] > 0 || cols[j][num] > 0 || subgrids[subgrid_index][num] > 0
        return false
      end

      rows[i][num] += 1
      cols[j][num] += 1
      subgrids[subgrid_index][num] += 1
    end
  end

  true
end
