class FireEmblem::Scraper
  attr_accessor :job, :doc
  def initialize(job_name)
    @job = FireEmblem::Job.new 
    @job.name = job_name
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))
    
  end
  
  def scrape 
    scrape_details
    @job  
  end
  
  def scrape_details
    words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    re = Regexp.union(words)
    @job.name = doc.search('h1.entry-title').text.split.join.gsub(re, "")
    
end
end