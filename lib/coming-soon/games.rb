class Games
  
  attr_accessor :title, :dev, :release_date
  
  @@all = []
  
  def initialize 
    @title = title
    @dev = dev
    @release_date = release_date
  end
  
  def self.scrape_nintendo
    doc = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    game = self.new 
    game.title = doc.search("ul.items.cols-4.style-cover span.title.accent-hover").text.strip
    game.dev = doc.search("p.description").text.strip
    game.release_date = doc.search("ul.release_dates").text.strip
    
    game 
  end 
  
  def self.all
    @@all << self.scrape_nintendo
    @@all
  end
  
  def title=(title)
    @title = title
  end
  
  def self.dev
    @dev = dev
  end 
  
  def self.release_date
    @release_date = release_date
  end 
  
end 