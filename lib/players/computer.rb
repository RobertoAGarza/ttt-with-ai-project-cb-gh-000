module Players
  class Computer < Player

    WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]
    def move(board)
      #"#{rand(1..9)}"
      enemyToken = " "
      if token == "X"
        enemyToken = "O"
      elsif token =="O"
        enemyToken == "X"
      end 
      WIN_COMBINATIONS.each do |win_combination|
        if (board.position(win_combination[0]) == enemToken &&
            board.position(win_combination[1]) == enemToken ) ||
           (board.position(win_combination[0]) == enemToken &&
            board.position(win_combination[2]) == enemToken ) ||
           (board.position(win_combination[1]) == enemToken &&
            board.position(win_combination[2]) == enemToken ) 
    end
  end
end
