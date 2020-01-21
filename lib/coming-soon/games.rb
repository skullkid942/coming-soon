class Games
  
  attr_accessor :title, :dev, :release_date
  
  @@all = []
  
  def initialize 
    @title = title
    @dev = dev
    @release_date = release_date
  end
  
  def self.list
    Scraper.title_scrape.each do |title|
      puts title.text
  end
  
  #def self.all 
  #  @@all << list
  #  @@all 
  #end 
end 
end 