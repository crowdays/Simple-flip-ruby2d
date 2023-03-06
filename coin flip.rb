#Name: Coin Flipper
#Date: 3/6/23
#Creator: Lorenzo Juarez
#Description:
#This program simulates the flipping of a coin using the Ruby2D library.
#It defines a Coin class, which has two sides (heads and tails) and can be flipped by clicking the mouse.
#The program displays the current side of the coin on the screen using the Ruby2D Text class.


require 'ruby2d'

set width: 200, height: 200

# Define the two sides of the quarter
HEADS = "H"
TAILS = "T"

# Define the coin class
class Coin
  attr_reader :side

  def initialize(x, y)
    @x = x
    @y = y
    @side = HEADS
    @text = Text.new(@side, x: @x, y: @y, size: 50, color: 'yellow')
  end

  def flip
    @side = [HEADS, TAILS].sample
    @text.text = @side
  end
end

# Create the coin
coin = Coin.new(75, 75)

# Flip the coin when the mouse is clicked
on :mouse_down do
  coin.flip
end

show
