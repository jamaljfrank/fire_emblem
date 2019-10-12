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
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class"]
  re = Regexp.union(words)
  job = self.new
  job.name = doc.search('h1.entry-title').text,
  job.name.split.join.gsub(re, "")
  binding.pry
  job.abilities = doc.xpath('//*[@id="post-150519"]/div/table[4]/tbody').text
  


  
  
end
end



  
