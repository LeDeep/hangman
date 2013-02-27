class Game

  def initialize(word)
    @word = word
    @wrong_guess = 0
  end

  def over?
    @wrong_guess == 7 || win
  end

  def choose(letter)
    if @word.guess(letter) == true
      @correct_guess
    else
      @wrong_guess += 1
    end
  end

 

  def win
  end

  


end
