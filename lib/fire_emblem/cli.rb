class FireEmblem::CLI
  
  def call 
    list
    menu
    bye
  end
  
  def list 
     @classes = FireEmblem::Class.all
     @classes.each_with_index(1) do |class_name, i|
       puts "#{i}. #{class_name}"
     end
  end
  

  
  def menu
    input = nil
    loop do
    puts "Enter class number or name for more info. Enter list to see all:"
    
      input = gets.strip.downcase
      if input.to_i > 0 
        puts @classes[input_to_i-1]
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
  
    
    
    
  
  

