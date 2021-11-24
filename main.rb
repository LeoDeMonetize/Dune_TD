require 'gosu'
require './startscreen'
include Gosu



sm = Screen_manager.new()
sm.next(Start_screen.new(sm))

