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
    puts "#{@job.skill_1} - #{@job.skill_info_1}"
    puts
    puts "#{@job.skill_2} - #{@job.skill_info_2}"
    puts
    puts "#{@job.skill_3} -  #{@job.skill_info_3}"
    puts
    puts "#{@job.skill_4} -  #{@job.skill_info_4}"
    puts
    puts "#{@job.skill_5} -  #{@job.skill_info_5}"
  end

  def scrape_a1
    @job.skill_1 = @table.css('td')[0].text
    @job.skill_info_1 = @table.css('td')[1].text
  end

  def scrape_a2
    if @table.css('td')[2] == nil 
      @job.skill_2 = nil 
    else 
      @job.skill_2 = @table.css('td')[2].text
      @job.skill_info_2 = @table.css('td')[3].text
    end
  end

  def scrape_a3
    if @table.css('td')[4] == nil
      @job.skill_3 = nil
    else 
      @job.skill_3 = @table.css('td')[4].text 
      @job.skill_info_3 = @table.css('td')[5].text
    end
  end

  def scrape_a4
    if @table.css('td')[6] == nil
      @job.skill_4 = nil 
    else
      @job.skill_4 = @table.css('td')[6].text
      @job.skill_info_4 = @table.css('td')[7].text
    end
  end

  def scrape_a5
    if @table.css('td')[8] == nil
      @job.skill_5 = nil
    else
      @job.skill_5 = @table.css('td')[8].text
      @job.skill_info_5 = @table.css('td')[9].text
    end
  end
end


      
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    



  
  


