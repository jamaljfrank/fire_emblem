class FireEmblem::Job 
 attr_accessor :name, :abilities, :xability, :xart, :url
 @@jobs = []
 
 def initialize
    @@jobs << self
   
end

def self.scrape
    
    @@jobs = []
    @@jobs << self.scrape_rpgsite
    @@jobs
    
end

def self.all 
  @@jobs
end

def self.scrape_rpgsite
  doc = Nokogiri::HTML(open("https://www.rpgsite.net/feature/8752-fire-emblem-three-houses-class-guide-best-classes-class-change-certification-requirements-skills-abilities-and-class-mastery"))
  job = self.new
  job.name = doc.xpath('//*[@id="article"]/div[2]/h3[24]').text
  job.abilities = doc.xpath('//*[@id="article"]/div[2]/ul[21]/li[2]/ul/li').text
  


  
  binding.pry 
end
end



  
