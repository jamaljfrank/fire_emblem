class FireEmblem::Job 
 attr_accessor :name, :abilities, :url
 
 
def self.all 
  self.scrape
end

def self.scrape
    jobs = []
    
    jobs << self.scrape_site
    jobs
    
end



def self.scrape_site(url="https://samurai-gamers.com/fire-emblem-three-houses/archer-class/")
  
  
  
  doc = Nokogiri::HTML(open(url))
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
  re = Regexp.union(words)
  
  job = self.new
  
  job.name = doc.search('h1.entry-title').text.split.join.gsub(re, "")
  job.abilities = doc.search('table')[3].text.gsub(re, "")
  job


end
end



  
