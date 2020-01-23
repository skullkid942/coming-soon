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
  end
  
  def self.all
    Scraper.title_scrape.each do |title|
      @@all << title.text
    end 
  end
  
  def title
    @title = Scraper.title_scrape
  end
  
  def self.dev
    @dev = Scraper.dev_scrape
    @dev
  end 
  
  def self.release_date
    @release_date = Scraper.date_scrape
    @release_date
  end 
  
end 