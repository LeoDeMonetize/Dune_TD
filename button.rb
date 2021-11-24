require 'gosu'
include Gosu

class Button_press
  attr_accessor :color
  @animate = false
  def initialize(window, x, y, width, height, text, color,*animate)
    @window= window
    @x = x
    @y = y
    @width = width
    @height = height
    @text = text
    @color=color
    @c=0
    @animate=animate
  end

  def draw
    @rect =draw_rect(@x, @c*@y, @width, @height, @color, z = 0, mode = :default)

    font = Font.new(20)
    font.draw_text_rel(@text, @x + (@width / 2), @c*@y + (@height / 2), 0, 0.5, 0.5, scale_x = 1, scale_y = 1, color = 0xff_000000, mode = :default)
    if @c<1 ; @c+=0.02; end
  end

  def action(x, y)
    if x >= @x && x <= @x + @width && y >= @y && y <= @y + @width

      return true


    end
  end

end
