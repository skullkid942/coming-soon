class Games
  
  attr_accessor :title, :dev, :release_date
  
  @@all = []
  
  def initialize 
    @title = title
    @dev = dev
    @release_date = release_date
  end
  
  def self.all 
    @@all << CLI.list
    @@all 
  end 
end 