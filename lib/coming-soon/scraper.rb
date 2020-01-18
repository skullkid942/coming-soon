class Scraper
  
  def self.title_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    titles = page.css("span.title.accent-hover")
  end 
  
  def self.dev_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    price = page.css ("p.description")
  end 
  
  def self.date_scrape
    page = Nokogiri::HTML(open("http://www.nintendolife.com/nintendo-switch/games/browse?status=upcoming"))
    release_date = page.css ("ul.release_dates")
  end 
    
    
  
end 