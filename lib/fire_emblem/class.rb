class FireEmblem::Class 
 
 def self.all 
   puts <<-DOCS
    1. Armored Knight	
    2. Cavalier
    3. Fighter	
    4. Mercenary 	 
    5. Monk
    6. Myrmidon	 
    7. Soldier	
    8. Thief
    DOCS
    
    class_1 = self.new 
    class_1.name = "Archer"
    class_1.abilities = "Bowrange +1: Increases bow range by 1."
    class_1.xability = "Hit +20: Increases Hit by 20."
    class_1.xart = "None"
    class_1.url = "https://serenesforest.net/three-houses/classes/class-abilities-arts/"
    
  end
end
