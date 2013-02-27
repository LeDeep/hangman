require './lib/word'
require './lib/game'
require './lib/body'

word = Word.new
body = Body.new
puts "Welcome to Hangman."


puts "Here is the board for your game."
puts body



#until game.over?
  puts word.to_s.join
  puts "Pick a letter."
  letter = gets.chomp
    if word.guess(letter) == true
      puts "You guessed a letter!"
    else
      puts "Sorry, no letter like that in this word. Your hangman lost a limb!"
    end

  #do you want to guess the word
    #y
      #then stuff
    #n
      #then continue
  #letter.wrong
  #puts


#end



