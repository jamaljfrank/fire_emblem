class FireEmblem::Job 
 attr_accessor :name, :a1, :a2, :a3, :a4, :a5, :a1effect, :a2effect, :a3effect, :a4effect, :a5effect
 
  def self.all
  jobs = ['Archer','Armored-Knight','Assassin','Bishop','Bow-Knight','Brawler','Brigand','Cavalier','Dark-Bishop','Dark-Knight','Dark-Mage','Falcon-Knight','Fighter','Fortress-Knight','Grappler','Great-Knight','Gremory','Hero','Holy-Knight','Mage','Mercenary','Monk','Mortal-Savant','Myrmidon','Paladin','Pegasus-Knight','Priest','Sniper','Soldier','Swordmaster','Thief','Warlock','War-Master','Warrior','Wyvern-Lord','Wyvern-Rider']
  end
  
  def initialize
    @jobs = []
  end
  
  def add_job(job)
    @jobs << job
  end
end



  
