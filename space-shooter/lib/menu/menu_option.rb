
class MenuOption

  def initialize(text,y)
    @image = Gosu::Image.from_text(text, 60, font: Utils.default_font)
    @x = Utils.center_x(@image)
    @y = y

  end

  def draw(is_selected)

    color = is_selected ? Utils::TEXT_COLOR : Utils::TEXT_COLOR_LIGHT
    @image.draw(@x,@y,1,1,1,color)

  end

end