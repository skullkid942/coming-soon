class CLI 
  attr_accessor :title, :dev, :release_date
  
  def menu
    puts "Check out these cool games coming soon to Nintendo Switch! "
    Games.list
  end 
  
  def call
    #binding.pry 
    message = "Please choose a game for more info, list, or exit: "
    menu
    puts message
    input = gets.strip
    if input.downcase == "list"
        Games.list
        puts message 
      elsif input.downcase == Games.all.detect{|title| Scraper.title_scrape}
        Games.dev(title) 
        Games.release_date(title)
      elsif input.downcase == "exit"
        "Thank you for checking out the upcoming games."
      else
        "I don't understand what you entered, try again."
        puts message
        Games.list 
    end
  end
  
end 