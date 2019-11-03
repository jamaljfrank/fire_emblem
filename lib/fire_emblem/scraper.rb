class FireEmblem::Scraper
  attr_accessor :job, :doc 
  def initialize(job_name)
    @job = FireEmblem::Job.new 
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))
    @table = doc.search('table')[3]
    words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    re = Regexp.union(words)
    @job.name = doc.search('h1.entry-title').text.split.join.gsub(re, "")
  end
  
  def scrape 
    
    scrape_a1
    scrape_a2
    scrape_a3
    scrape_a4
    scrape_a5
    puts
    puts "Class name: #{@job.name}"
    puts
    puts "#{@job.a1} - #{@job.a1effect}"
    puts
    puts "#{@job.a2} - #{@job.a2effect}"
    puts
    puts "#{@job.a3} -  #{@job.a3effect}"
    puts
    puts "#{@job.a4} -  #{@job.a4effect}"
    puts
    puts "#{@job.a5} -  #{@job.a5effect}"
  
end

def scrape_a1
  @job.a1 = @table.css('td')[0].text
  @job.a1effect = @table.css('td')[1].text
end

def scrape_a2
  if  @table.css('td')[2] == nil 
    @job.a2 = nil 
  else 
    @job.a2 = @table.css('td')[2].text
    
  @job.a2effect = @table.css('td')[3].text
end
end

def scrape_a3
  if @table.css('td')[4] == nil
    @job.a3 = nil
  else 
    @job.a3 = @table.css('td')[4].text 
    
  @job.a3effect = @table.css('td')[5].text
end
end

def scrape_a4
  if @table.css('td')[6] == nil
    @job.a4 = nil 
  else
    @job.a4 = @table.css('td')[6].text
  
  @job.a4effect = @table.css('td')[7].text
end
end

def scrape_a5
  if @table.css('td')[8] == nil
    @job.a5 = nil
  else
    @job.a5 = @table.css('td')[8].text
    
  
  @job.a5effect = @table.css('td')[9].text
    
  end
end
end


      
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    



  
  


