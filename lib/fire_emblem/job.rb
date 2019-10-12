class FireEmblem::Job 
 attr_accessor :name, :abilities, :xability, :xart, :url
 @@jobs = []
 
 
def self.scrape
    
    
    @@jobs << self.scrape_site
    @@jobs
    
end

def self.all 
  self.scrape
end

def self.scrape_site
  doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/archer-class/"))
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
  re = Regexp.union(words)
  
  job = {}
  
  job[:name] = doc.search('h1.entry-title').text.split.join.gsub(re, "")
  job[:abilities] = doc.search('table')[3].text.gsub(re, "")
  job


  
  
end
end



  
