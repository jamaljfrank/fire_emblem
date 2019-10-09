class FireEmblem::CLI
  
  def call 
    puts "Select a class:"
    list
  end
  
  def list 
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
  end
end

