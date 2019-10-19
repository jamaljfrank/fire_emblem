class FireEmblem::CLI
  
  def call 
   title = <<'ART'
 ______ __  _ ____  ______   ______ _ ___ ____  ______  __    _____ __ __ ____
/_  __//_ |/_' _  |/_  __/  /_  __//_' _ ' _  \/_  _  \/_ |  |  __//_ '_ ' _  \
 | |___ | | | |_| | | |___   | |___ | | | | | | | |_| | | |  | |___ | | | | | |
 |  __/ | | |    _| |  __/   |  __/ | | | | | | |  _ <  | |  |  __/ | | | | | |
 | |    | | | |\ \  | |___   | |___ | | | | | | | |_| | | |__| |___ | | | | | |
 |_|    |_| |_| \_\ |____/   |____/ |_| |_| |_| |_____/ |___/|____/ |_| |_| |_|
ART
puts title
puts
puts "Enter a class number for more information, Professor."
puts
    list
    menu
    bye
  end
  
  def list 
    puts 
 jobs = ['Archer','Armored Knight','Assassin','Bishop','Bow Knight','Brawler','Brigand','Cavalier','Dark Bishop','Dark Knight','Dark Mage','Falcon Knight','Fighter','Fortress Knight','Grappler','Great Knight','Gremory','Hero','Holy Knight','Mage','Mercenary','Monk','Mortal Savant','Myrmidon','Paladin','Pegasus Knight','Priest','Sniper','Soldier','Swordmaster','Thief','Warlock','War Master','Warrior','Wyvern Lord','Wyvern Rider']
 jobs.each.with_index(1) do |j, i|
   puts "#{i}. #{j}" 
   
  end
end

  
  def menu
    input = nil
    loop do
    
    
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 38
       puts FireEmblem::Job.all[input.to_i-1][:name] 
       puts FireEmblem::Job.all[input.to_i-1][:abilities] 
       puts "Enter list to see all:"
      
      

      elsif input == "list"
        list
      elsif input == "exit"
        break
      else
        puts "Try again, Professor. If you're ready to leave, type exit."
      end
    end
  end
  
  def bye
    puts "Good luck, Professor. The fate of Fodlan is in your hands!"
  end
end

    
    
    
  
  

