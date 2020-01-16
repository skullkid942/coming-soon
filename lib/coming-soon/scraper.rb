class Scraper
  
  def self.title_scrape
    page = Nokogiri::HTML(open("https://www.nintendo.com/games/coming-soon/"))
    title = page.css "a.info h3"
  end 
  
  def self.price_scrape
    page = Nokogiri::HTML(open("https://www.nintendo.com/games/coming-soon/"))
    price = page.css "span.price"
  end 
  
  def self.date_scrape
    page = Nokogiri::HTML(open("https://www.nintendo.com/games/coming-soon/"))
    release_date = page.css "div.addeventatc1.flag.addeventatc.switch"
  end 
    
    
  
end 