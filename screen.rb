require 'gosu'
include Gosu

class Screen_manager < Window

  def initialize


  end



  def close
    @window.close
  end

  def next(window)
    @window = window
  end

end
