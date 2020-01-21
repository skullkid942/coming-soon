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
  
  def title
    @title = Scraper.title_scrape
  end
  
  def dev
    @dev = Scraper.dev_scrape
  end 
  
  def release_date
    @release_date = Scraper.date_scrape
  end 
  
end 
end 