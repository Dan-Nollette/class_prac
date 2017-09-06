module Turn
  def skip
    "not your turn"
  end

  def whos_turn(name)
    "it is " + name + "'s turn"
  end
end

class Player
  include Turn
  attr_writer(:name, :age, :score)
  def initialize(name, age, score)
    @name = name
    @age = age
    @score = score
  end
end
