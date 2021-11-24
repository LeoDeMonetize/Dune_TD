require 'gosu'
include Gosu

class Game_screen < Window

  def initialize(sm)
    @width=1080
    @height=720
    super(@width,@height,false)
    @sm = sm
    show
  end

  def draw

  end

  def update

  end
end
