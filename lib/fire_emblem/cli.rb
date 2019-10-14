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
puts "Enter a class name or number for more information, Professor. It might take a few seconds..."
puts
    list
    menu
    bye
  end
  
  def list 
    puts "
1. Archer
2. ArmoredKnight
3. Assassin
4. Bishop
5. BowKnight
6. Brawler
7. Brigand
8. Cavalier
9. DarkBishop
10. DarkKnight
11. DarkMage
12. FalconKnight
13. Fighter
14. FortressKnight
15. Grappler
16. GreatKnight
17. Gremory
18. Hero
19. HolyKnight
20. Mage
21. Mercenary
22. Monk
23. MortalSavant
24. Myrmidon
25. Paladin
26. PegasusKnight
27. Priest
28. Sniper
29. Soldier
30. Swordmaster
31. Thief
32. Warlock
33. WarMaster
34. Warrior
35. WyvernLord
36. WyvernRider"
    
  end
  

  
  def menu
    input = nil
    loop do
    
    
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 38
       puts FireEmblem::Job.all[input.to_i-1][:name] 
       puts FireEmblem::Job.all[input.to_i-1][:abilities] 
       puts "Enter class number or name for more info. Enter list to see all:"

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

    
    
    
  
  

