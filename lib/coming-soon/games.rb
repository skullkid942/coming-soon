class Games
  
  attr_accessor :title, :price, :release_date
  
  @@all = []
  
  def initialize 
    @title = title
    @price = price
    @release_date = release_date
  end 
  
  def self.all
    list = Scraper.title_scrape
    @@all << list 
  end
  
  def self.print_all
    all.each_with_index do |game, index|
      puts "#{index+1}.     #{game.name}"
    end
  end
  
end 