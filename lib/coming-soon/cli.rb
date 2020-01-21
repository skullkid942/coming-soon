class CLI 
  attr_accessor :title, :dev, :release_date
  
  def call 
    input = gets.strip
    puts "Check out these cool games coming soon to Nintendo Switch! "
    Games.list 
    puts "Please choose a game for more info, list, or exit: "
    if input.downcase == "list"
        Games.list
        call 
      elsif input.downcase == "exit"
        "Thank you for checking out the upcoming games."
      elsif input == Scraper.title_scrape
        @dev 
        @release_date 
      else
        "I don't understand what you entered, try again."
        call
    end
  end
  
end 