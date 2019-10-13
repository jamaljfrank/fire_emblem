class FireEmblem::CLI
  
  def call 
    list
    menu
    bye
  end
  
  def list 
    
     FireEmblem::Job.all.each_with_index do |job, i|
       puts "#{i+1}. #{job[:name]} "
     end
  end
  

  
  def menu
    input = nil
    loop do
    puts "Enter class number or name for more info. Enter list to see all:"
    
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 39
        puts @jobs[input.to_i-1]

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

    
    
    
  
  

