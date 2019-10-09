class FireEmblem::Class 
 
 def self.all 
   puts <<-DOCS
    1.Archer
2.Armored Knight
3.Assassin
4.Bishop
5.Bow Knight
6.Brawler
7.Brigand
8.Cavalier
9.Dancer
10.Dark Bishop
11.Dark Knight
12.Dark Mage
13.Falcon Knight
14.Fighter
15.Fortress Knight
16.Grappler
17.Great Knight
18.Gremory
19.Hero
20.Holy Knight
21.Lord
22.Mage
23.Mercenary
24.Monk
25.Mortal Savant
26.Myrmidon
27.Paladin
28.Pegasus Knight
29.Priest
30.Sniper
31.Soldier
32.Swordmaster
33.Thief
34.Warlock
35.War Master
36.Warrior
37.Wyvern Lord
38.Wyvern Rider
    DOCS
    
    class_1 = self.new 
    class_1.name = "Archer"
    class_1.abilities = "Bowrange +1: Increases bow range by 1."
    class_1.xability = "Hit +20: Increases Hit by 20."
    class_1.xart = "None"
    class_1.url = "https://serenesforest.net/three-houses/classes/class-abilities-arts/"
    
  end
end
