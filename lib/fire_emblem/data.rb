class FireEmblem::Data 
  def self.initialize(url="https://samurai-gamers.com/fire-emblem-three-houses/archer-class/")
    
    
    
    doc = Nokogiri::HTML(open(url))
    job = {}
    words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    re = Regexp.union(words)
  
    job[:name] = doc.search('h1.entry-title').text.split.join.gsub(re, "")
    job[:abilities] = doc.search('table')[3].text.gsub(re, "")
    job
    binding.pry
  
  
  
end
end




    