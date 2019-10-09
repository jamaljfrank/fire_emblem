class FireEmblem::Class 
 attr_accessor :name, :abilities, :xability, :xart, :url
 def self.all 
   puts [
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
    
    class_1 = self.new 
    class_1.name = "Archer"
    class_1.abilities = "Bowrange +1: Increases bow range by 1."
    class_1.xability = "Hit +20: Increases Hit by 20."
    class_1.xart = "None"
    class_1.url = "https://serenesforest.net/three-houses/classes/class-abilities-arts/"
    [class_1]
  end
end
