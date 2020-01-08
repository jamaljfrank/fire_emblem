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
  
  def scrape_skills 
    words = ["Name" , "Effect"]
    re = Regexp.union(words)
    skills = @table.text.to_s.gsub(re, "").split("\n")
    skills.delete_if {|element| element.length == 0}
    
    puts
    puts "Class name: #{@job.name}"
    puts
    puts "#{skills[0]} - #{skills[1]}"
    puts
    puts "#{skills[2]} - #{skills[3]}"
    puts
    puts "#{skills[4]} -  #{skills[5]}"
    puts
    puts "#{skills[6]} -  #{skills[7]}"
    puts
    puts "#{skills[8]} -  #{skills[9]}"
  end
end


      
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    



  
  


