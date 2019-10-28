class FireEmblem::Scraper
  attr_accessor :job, :doc 
  def initialize(job_name)
    @job = FireEmblem::Job.new 
    @job.name = job_name
    @job.a1 = nil
    @job.a2 = nil
    @job.a3 = nil
    @job.a4 = nil
    @job.a5 = nil
    @job.a1effect = nil
    @job.a2effect = nil
    @job.a3effect = nil
    @job.a4effect = nil
    @job.a5effect = nil
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))
    
  end
  
  def scrape 
    scrape_details
    @job  
  end
  
  def scrape_all
    words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    re = Regexp.union(words)
    @job.name = doc.search('h1.entry-title').text.split.join.gsub(re, "")
    table = doc.search('table')[3]
    @job.a1 = table.css('td')[0].text
    @job.a2 = table.css('td')[2].text
    @job.a3 = nil
    @job.a4 = nil
    @job.a5 = nil
    @job.a1effect = table.css('td')[1].text
    @job.a2effect = table.css('td')[3].text
    @job.a3effect = nil
    @job.a4effect = nil
    @job.a5effect = nil
    binding.pry
  end
  
  def scrape_abilities
    
      @job.a1 = doc.search('table[3]:td[1]').text
      
  
  end
end

