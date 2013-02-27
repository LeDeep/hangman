class Body

  def initialize
    @gallow_top = "     ----------"
    @head = "     /\\\        |" 
    @head2 = "     \\\/        |"
    @neck = "     |         |"
    @arms =  "  -------      |"
    @torso =  "     |         |" 
    @torso2 = "     |         |"
    @legs = "    /\\\         |"
    @legs2 = "   /  \\\        |"
    @gallow_base = "        ____________"
  end

  def to_s
    "\n#{@gallow_top}\n#{@head}\n#{@head2}\n#{@neck}\n#{@arms}\n#{@torso}\n#{@torso2}\n#{@legs}\n#{@legs2}\n#{@gallow_base}\n\n\n\n"
  end

  def lose_body_part
    if @wrong_guess == 1
        @legs = "     \\\         |"
        @legs2 = "      \\\        |"
    end
  end
# def initialize
#     @spaces = {'head top'=>'     /\', '2'=>'2', '3'=>'3', '4'=>'4', '5'=>'5', '6'=>'6', '7'=>'7', '8'=>'8', '9'=>'9'}
#   end

end

