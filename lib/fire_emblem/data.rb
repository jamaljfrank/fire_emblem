class FireEmblem::Data 
  attr_accessor :name, :abilities
  
   @urls = ["https://samurai-gamers.com/fire-emblem-three-houses/archer-class/", "https://samurai-gamers.com/fire-emblem-three-houses/armored-knight-class/", "https://samurai-gamers.com/fire-emblem-three-houses/assassin-class/"]
  @all_jobs = []
  
  def self.initialize
    
    job = {name: nil, abilities: nil}
   
      
    @urls.each do |url|  
    
    doc = Nokogiri::HTML(open(url))
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
  re = Regexp.union(words)
  
  job[:name] = doc.search('h1.entry-title').text.split.join.gsub(re, ""),
  
  
  job[:abilities] = doc.search('table')[3].text.gsub(re, ""),
  @all_jobs << job
  @all_jobs
  
  
end
end
end



    