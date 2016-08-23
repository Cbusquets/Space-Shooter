require_relative 'menu_option'

class MainMenu
  OPTIONS_MARGIN_TOP = 200
  MARGIN_INTERNAL_Y = 80
  OPTIONS = { #inicio hash
    play: 0,
    exit: 1
  } #fin hash

  def initialize(window)
    @title = Gosu::Image.from_text('Menu Principal', Utils:: FONT_SIZE_BIG, font: Utils.default_font)
    @x = Utils.center_x(@title)
    @window = window
    @current_option = OPTIONS[:play]

      @options = [] #array inicio
        ["Jugar", "Salir"].each_with_index do |text, index|
          option_y = OPTIONS_MARGIN_TOP + (index * MARGIN_INTERNAL_Y)
          @options << MenuOption.new(text,option_y)
    end #fin array

  end

  def draw
    @title.draw(@x,0,0)
    @options.each do |option|
      is_selected = option == @options[@current_option]
      option.draw(is_selected)
    end #fin each


  end

  def button_down(id)
    if id == Gosu::KbEscape
      @window.close

    end

  end

end