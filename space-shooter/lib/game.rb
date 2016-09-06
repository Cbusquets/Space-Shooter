require 'gosu'
require_relative 'utils'
require_relative 'menu/main_menu'
require_relative 'level/level'

class Game < Gosu::Window
  SCREEN_WIDTH = 1024
  SCREEN_HEIGHT = 600

  def initialize
    super(SCREEN_WIDTH, SCREEN_HEIGHT, fullscreen: false)
    self.caption = 'SpaceShooter'
    @main_menu = MainMenu.new(self)
    @current_screen = @main_menu
  end

  def update
    @current_screen.update

  end

  def draw
    @current_screen.draw
  end

  def button_down(id)
    @current_screen.button_down(id)


  end

  def show_level
    @current_screen = Level.new(self)

  end

  def show_main_menu
    @current_screen = @main_menu

  end

end