class Math_question
  attr_reader :num1, :num2, :player_name, :correct

  def initialize(player_name)
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @player_name = player_name
    @correct = false
  end

  def question?
    "#{@player_name}: What does #{@num1} plus #{@num2} equal"
  end

  def answer?(user_answer)
    right = ['That was an easy one.', 'Well done!', 'WRONG...not!']
    wrong = ['Seriously? No!', 'ZOMG No NO NO!', 'That has to be a joke, right?']

    if user_answer == @num1 + @num2
      @correct = true
      return "#{@player_name}: #{right.sample}"
    else
      @correct = false
      return "#{@player_name}: #{wrong.sample}"
    end
  end
end