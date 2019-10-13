class FireEmblem::Data 
  attr_accessor :name, :abilities, :url, :urls
   
    
  def self.scrape_site
  @@all = []  
  urls = [

"https://samurai-gamers.com/fire-emblem-three-houses/archer-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/armored-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/assassin-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/bishop-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/bow-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/brawler-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/brigand-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/cavalier-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/dancer-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/dark-bishop-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/dark-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/dark-mage-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/falcon-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/fighter-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/fortress-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/grappler-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/great-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/gremory-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/hero-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/holy-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/mage-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/mercenary-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/monk-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/mortal-savant-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/myrmidon-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/paladin-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/pegasus-knight-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/priest-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/sniper-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/soldier-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/swordmaster-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/thief-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/warlock-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/war-master-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/warrior-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/wyvern-lord-class/",
"https://samurai-gamers.com/fire-emblem-three-houses/wyvern-rider-class/"
]
  urls.each { |url|
  doc = Nokogiri::HTML(open(url))
  words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
  re = Regexp.union(words)
  @@all << {
  :name => doc.search('h1.entry-title').text.split.join.gsub(re, ""),
  :abilities => doc.search('table')[3].text.gsub(re, "")
  } }
  

end
end
















