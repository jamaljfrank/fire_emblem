class FireEmblem::Scraper
  attr_accessor :job, :doc 
  
  def name_array
    name_doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/"))
    words = ["Beginner" , "Classes", "Intermediate", "Advanced", " "]
    re = Regexp.union(words)
    list = name_doc.search('table')[13..16].text.gsub(re, "-").sub(" ", "-").split("\n")
    
    list.delete_if {|element| element.include?("▼")}
    list.delete_if {|element| element.length <= 1}
    list.sort
  end

  def scrape_all(job_name)
    
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))
    @table = doc.search('table')[3]
    name_words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    skill_words = ["Name" , "Effect"]
    nm = Regexp.union(name_words)
    sk = Regexp.union(skill_words)
    saved_name = doc.search('h1.entry-title').text.split.join.gsub(nm, "")
    saved_skills = @table.text.to_s.gsub(sk, "").split("\n")
    saved_skills.delete_if {|element| element.length == 0}
  end
end


      
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    



  
  


