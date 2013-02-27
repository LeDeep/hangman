# require 'spec_helper'

# describe Body do 
#   context '#to_s' do 
#     it 'shows the initial body for the game' do 
#     body = Body.new
#     body.to_s.should eq '     ----------', '     /\\\        |', '     \\\/        |', '     |         |',
#           '  -------      |', '     |         |', '     |         |',  '    /\\\         |',
#            '   /  \\\        |', '        ____________'
#     end
#   end
# end

describe Body do
  context '#lose_body_part' do
    it 'removes left leg for first wrong guess'do    
      body = Body.new
      game = double
      game.stub(:choose).and_return(false)

      body.

