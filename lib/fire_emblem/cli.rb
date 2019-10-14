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
    puts "
 1. Archer
 2. Armored Knight
 3. Assassin
 4. Bishop
 5. Bow Knight
 6. Brawler
 7. Brigand
 8. Cavalier
 9. Dark Bishop
10. Dark Knight
11. Dark Mage
12. Falcon Knight
13. Fighter
14. Fortress Knight
15. Grappler
16. Great Knight
17. Gremory
18. Hero
19. Holy Knight
20. Mage
21. Mercenary
22. Monk
23. Mortal Savant
24. Myrmidon
25. Paladin
26. Pegasus Knight
27. Priest
28. Sniper
29. Soldier
30. Swordmaster
31. Thief
32. Warlock
33. War Master
34. Warrior
35. Wyvern Lord
36. Wyvern Rider"
    
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

    
    
    
  
  

