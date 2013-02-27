require 'spec_helper'
  describe Game do 
    context '#over?' do 
      it 'is over when player makes seven incorrect guesses' do 
        word = Word.new
        game = Game.new(word)
        word = double
        word.stub(:guess).and_return("platypus")

        game.over?.should be_false
      end
    
      it 'is over when player makes seven incorrect guesses' do 
        word = Word.new
        game = Game.new(word)
        word = double
        word.stub(:guess).and_return("platypus")

        7.times {game.choose("q")}
        game.over?.should be_true
      end
    end
  end
