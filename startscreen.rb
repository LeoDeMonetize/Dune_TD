require 'gosu'
require './button'
require './screen'
require 'opengl'
require './gamescreen'
include Gosu
include OpenGL

class Start_screen < Window
  def initialize(sm)

    @width=1080
    @height=720
    super(@width,@height,false)
    @sm = sm
    @start_button = Button_press.new(self,@width/2-50,@height/2-100,100,40,'hello',Color::CYAN)
    @background_image = Image.new("img.png")

    show

  end

  def draw
    @background_image.draw(0,0,-1,@width.to_f/@background_image.width,@height.to_f/@background_image.height)
    @start_button.draw

  end
  def button_down id
    if id == MS_LEFT
      if @start_button.action(mouse_x,mouse_y)

        @sm.next(Game_screen.new(@sm))

      end
    end

  end


  def update

  end
end