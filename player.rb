class Player
  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def lost?
    @score == 0
  end

  def change_score?(correct)
    if !correct
      @score = @score - 1
    end
  end
end