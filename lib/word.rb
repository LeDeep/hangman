class Word

  def initialize
    @word_list = ["platypus", "gorilla", "building", "orange"]
    @secret_word = @word_list.sample
    @correct_guess = []
  end

  def guess(letter)
    if @secret_word.include?(letter)
      @correct_guess << letter
      true
    else
      false
    end
  end

  def to_s
    @secret_word.split("").map do |letter|
      if @correct_guess.include?(letter)
        letter + " "
      else
        "__ "
      end
    end
  end

end







