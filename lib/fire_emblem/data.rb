class FireEmblem::Data 
  attr_accessor :name, :abilities, :url, :urls
   
    @@all =[]
  def self.scrape_site
  urls = ["https://samurai-gamers.com/fire-emblem-three-houses/archer-class/" , "https://samurai-gamers.com/fire-emblem-three-houses/armored-knight-class/" , "https://samurai-gamers.com/fire-emblem-three-houses/assassin-class/"]
  urls.each { |url|
  doc = Nokogiri::HTML(open(url))
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
  re = Regexp.union(words)
  @@all << {
  :name => doc.search('h1.entry-title').text.split.join.gsub(re, ""),
  :abilities => doc.search('table')[3].text.gsub(re, "")
  } }
  binding.pry

end
end
