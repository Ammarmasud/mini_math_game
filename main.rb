# This is the main entrypoint into the program
# It requires the other files/gems that it needs

# require 'pry'
require './player'
require './round'
require './math_question'

module MathGame
  # ROUND = round.new
  PLAYER1 = Player.new('Player 1')
  PLAYER2 = Player.new('Player 2')

  turn = true
  while !PLAYER1.lost? || !PLAYER2.lost? do
    round = Round.new(turn, PLAYER1, PLAYER2)

    round.question?
    round.answer?
    if round.lost?(PLAYER1, PLAYER2)
      break
    end
    round.score?(PLAYER1, PLAYER2)
    turn = round.next_turn
  end

  puts "----- GAME OVER -----"
  puts "Good bye!"
end

MathGame