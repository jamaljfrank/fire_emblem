class FireEmblem::CLI
  
  def call 
    list
    menu
    bye
  end
  
  def list 
    
    @classes = FireEmblem::Class.all
  end

  
  def menu
    input = nil
    loop do
    puts "Enter class number or name for more info. Enter list to see all:"
    
      input = gets.strip.downcase
      case input
      when "1", "armored knight"
        puts "Armored Knight..."
      when "2"
        puts "Cavalier..."
      when "list"
        list
      when "exit"
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
  
    
    
    
  
  

