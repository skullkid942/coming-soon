class Scraper
  
  def self.title_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    titles = page.css("ul.items.cols-4.style-cover span.title.accent-hover")
  end 
  
  def self.dev_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    price = page.css ("p.description")
  end 
  
  def self.date_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    release_date = page.css ("ul.release_dates")
  end 
    
  def self.scrape_nintendo
    doc = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    game = Game.new 
    game.title = doc.search("ul.items.cols-4.style-cover span.title.accent-hover").text.strip
    game.dev = doc.search("p.description").text.strip
    game.release_date = doc.search("ul.release_dates").text.strip
    
    game 
  end 
  
end 