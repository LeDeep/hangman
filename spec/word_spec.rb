require 'spec_helper'

describe Word do 
  # context '#pick' do 
  #   it 'shows the word to be used in the game' do
  #     Array.stub(:sample) {self.first}
  #     word = Word.new
      
  #     ["platypus", "gorilla", "building", "orange", "computer", "brontosaurus", "pavement", "automobile", "sunshine"].should include word.pick
  #   end
  # end

  context '#game_word' do 
    it 'outputs dashes equal to the number of letters in the word for the game' do 
      Array.any_instance.should_receive(:sample).and_return("platypus")
      word = Word.new

      word.to_s.join.should eq '__ __ __ __ __ __ __ __ '
    end
  end

  context '#guess?' do 
    it 'checks if guessed letter is in the secret word' do 
      Array.any_instance.should_receive(:sample).and_return("platypus")
      word = Word.new

      word.guess("z").should be_false
    end

    it 'checks if guessed letter is in the secret word' do 
      Array.any_instance.should_receive(:sample).and_return("platypus")
      word = Word.new

      word.guess("p").should be_true
    end
  end

  context '#update_blank_space' do
    it 'inserts a letter where there was a blank space' do
      Array.any_instance.should_receive(:sample).and_return("platypus")
      word = Word.new

      word.guess("p")
      word.to_s.join.should eq 'p __ __ __ __ p __ __ '
    end
  end
end


