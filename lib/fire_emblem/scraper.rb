class FireEmblem::Scraper
  attr_accessor :job, :doc 
  def initialize(job_name)
    @job = FireEmblem::Job.new 
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))
    
  end
  
  def scrape 
    scrape_all
    @job  
  end
  
  
  
  def scrape_all
    words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    re = Regexp.union(words)
    @job.name = doc.search('h1.entry-title').text.split.join.gsub(re, "")
    table = doc.search('table')[3]
    
    @job.a1 = table.css('td')[0].text
      
    @job.a2 = table.css('td')[2].text
      
    @job.a3 = table.css('td')[4].text 
    
    @job.a4 = table.css('td')[6].text
    
    @job.a5 = table.css('td')[8].text
    
    @job.a1effect = table.css('td')[1].text
    
    @job.a2effect = table.css('td')[3].text
    
    @job.a3effect = table.css('td')[5].text
    
    @job.a4effect = table.css('td')[7].text
    
    @job.a5effect = table.css('td')[9].text
    
    
    
  end
end
  
  


