class FireEmblem::Job 
 attr_accessor :name, :abilities, :xability, :xart, :url
 def self.all 
   @jobs = [
"Archer",
"Armored Knight",
"Assassin",
"Bishop",
"Bow Knight",
"Brawler",
"Brigand",
"Cavalier",
"Dancer",
"Dark Bishop",
"Dark Knight",
"Dark Mage",
"Falcon Knight",
"Fighter",
"Fortress Knight",
"Grappler",
"Great Knight",
"Gremory",
"Hero",
"Holy Knight",
"Lord",
"Mage",
"Mercenary",
"Monk",
"Mortal Savant",
"Myrmidon",
"Paladin",
"Pegasus Knight",
"Priest",
"Sniper",
"Soldier",
"Swordmaster",
"Thief",
"Warlock",
"War Master",
"Warrior",
"Wyvern Lord",
"Wyvern Rider"]
    
   
end

def self.scrape
    
    classes = []
    classes << self.scrape_rpgsite
    classes
    
end

def self.scrape_rpgsite
  doc = Nokogiri::HTML(open("https://www.rpgsite.net/feature/8752-fire-emblem-three-houses-class-guide-best-classes-class-change-certification-requirements-skills-abilities-and-class-mastery"))
  binding.pry 
end
end



  
