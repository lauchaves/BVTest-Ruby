class Display

  def self.display_welcome
    puts "

    ╔╦╗╦╔═╗  ╔╦╗╔═╗╔═╗  ╔╦╗╔═╗╔═╗
     ║ ║║  ── ║ ╠═╣║  ── ║ ║ ║║╣
     ╩ ╩╚═╝   ╩ ╩ ╩╚═╝   ╩ ╚═╝╚═╝  "
  end

  def self.display_board
    puts "
         A   B   C
       ╔═══╦═══╦═══╗
     1 ║ #{$board[:A1]} ║ #{$board[:B1]} ║ #{$board[:C1]} ║
       ╠═══╬═══╬═══╣
     2 ║ #{$board[:A2]} ║ #{$board[:B2]} ║ #{$board[:C2]} ║
       ╠═══╬═══╬═══╣
     3 ║ #{$board[:A3]} ║ #{$board[:B3]} ║ #{$board[:C3]} ║
       ╚═══╩═══╩═══╝"
  end

  def self.select_game_mode
    puts "\n\n > Enter 1 for Single-Player"
    puts " > Enter 2 for Double-Player"
    print " \nGame Mode: "
  end

  def self.invalid_game_mode
    print " Invalid game mode. Please try again: "
  end

  def self.invalid_choice
    print " Invalid choice. Please try again: "
  end

  def self.choose_piece
    puts "\nWould you like to be 'X' or 'O'?\n\n"
  end

  def self.game_instructions
    puts "\n DIRECTIONS: Try to get three in a row by marking spaces on the board!"
    puts " Use board coordinates (A1, B3, C2, etc.) when making moves."
  end

  def self.start_game
    puts"
     ▄▄ •  ▄▄▄· • ▌ ▄ ·. ▄▄▄ .    .▄▄ · ▄▄▄▄▄ ▄▄▄· ▄▄▄  ▄▄▄▄▄
    ▐█ ▀ ▪▐█ ▀█ ·██ ▐███▪▀▄.▀·    ▐█ ▀. •██  ▐█ ▀█ ▀▄ █·•██
    ▄█ ▀█▄▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄    ▄▀▀▀█▄ ▐█.▪▄█▀▀█ ▐▀▀▄  ▐█.▪
    ▐█▄▪▐█▐█ ▪▐▌██ ██▌▐█▌▐█▄▄▌    ▐█▄▪▐█ ▐█▌·▐█ ▪▐▌▐█•█▌ ▐█▌·
    ·▀▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀      ▀▀▀▀  ▀▀▀  ▀  ▀ .▀  ▀ ▀▀▀
    "

  end

  def self.winner
    puts"

     ██╗   ██╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗
     ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║    ██║██║████╗  ██║
      ╚████╔╝ ██║   ██║██║   ██║    ██║ █╗ ██║██║██╔██╗ ██║
       ╚██╔╝  ██║   ██║██║   ██║    ██║███╗██║██║██║╚██╗██║
        ██║   ╚██████╔╝╚██████╔╝    ╚███╔███╔╝██║██║ ╚████║
        ╚═╝    ╚═════╝  ╚═════╝      ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝
     "
  end

  def self.draw
    puts"

      ██╗████████╗███████╗     █████╗     ██████╗ ██████╗  █████╗ ██╗    ██╗
      ██║╚══██╔══╝██╔════╝    ██╔══██╗    ██╔══██╗██╔══██╗██╔══██╗██║    ██║
      ██║   ██║   ███████╗    ███████║    ██║  ██║██████╔╝███████║██║ █╗ ██║
      ██║   ██║   ╚════██║    ██╔══██║    ██║  ██║██╔══██╗██╔══██║██║███╗██║
      ██║   ██║   ███████║    ██║  ██║    ██████╔╝██║  ██║██║  ██║╚███╔███╔╝
      ╚═╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚══╝╚══╝
    "
  end

  def self.invalid_space
    print " This space does not exist! Please try again: "
  end

  def self.space_taken
    print "This space has already been taken! Please try again: "
  end

  def self.invalid_syntax
    print "invalid_syntax. Please try again:"
  end

  def self.player_is
    puts " > is ready!"
  end

  def self.bot_is
    puts " > is ready!"
  end



end
