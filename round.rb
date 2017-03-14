class Round

  def initialize(turn, player1, player2)
    @turn = turn
    turn ? @active_player = player1 : @active_player = player2
    @mathq = Math_question.new(@active_player.name)

  end

  def question?
    puts @mathq.question?
    print '>'
    @user_answer = gets.chomp.to_i
  end

  def answer?
    puts @mathq.answer?(@user_answer)
    @active_player.change_score?(@mathq.correct)

  end

  def lost?(player1, player2)
    if @active_player.lost?
      @turn ? @active_player = player2 : @active_player = player1
      puts "#{@active_player.name} wins with a score of #{@active_player.score}/3"
      return true
    end
  end

  def score?(player1, player2)
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  end

  def next_turn
    @turn ? @turn = false : @turn = true
    puts "----- NEW TURN -----"
    return @turn
  end
end