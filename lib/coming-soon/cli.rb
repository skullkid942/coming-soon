class CLI 
  attr_accessor :title, :dev, :release_date
  
  def list
    @games = Games.all
    @games.each.with_index(1) do |game|
      puts " #{game.title} - #{game.dev} - #{game.release_date}"
    end
  end
  
  def menu
    puts "Check out these cool games coming soon to Nintendo Switch! "
    list
  end 
  
  def call
    #binding.pry 
    message = "Please choose a game for more info, list, or exit: "
    menu
    puts message
    input = gets.strip.downcase
    if input == "list"
        list
        puts message 
      elsif input == Games.all.detect{|title| Games.scrape_nintendo}
      binding.pry
        game.dev
        game.release_date
      elsif input == "exit"
        "Thank you for checking out the upcoming games."
      else
        "I don't understand what you entered, try again."
        puts message
        list
    end
  end
  
end