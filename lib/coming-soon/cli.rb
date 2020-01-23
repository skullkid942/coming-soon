class CLI 
  attr_accessor :title, :dev, :release_date
  
  def menu
    puts "Check out these cool games coming soon to Nintendo Switch! "
    Games.list
  end 
  
  def call
    binding.pry 
    message = "Please choose a game for more info, list, or exit: "
    menu
    puts message
    input = gets.strip.downcase
    if input == "list"
        Games.list
        puts message 
      elsif input == Games.all.detect{|title| Scraper.title_scrape}
        input.dev
        input.release_date
      elsif input == "exit"
        "Thank you for checking out the upcoming games."
      else
        "I don't understand what you entered, try again."
        puts message
        Games.list 
    end
  end
  
end 