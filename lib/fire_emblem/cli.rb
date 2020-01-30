1class FireEmblem::CLI 
  
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
    puts
    find_names
    list_names
    menu
  end
  
  def find_names
    @job = FireEmblem::Job.scrape_names
  end

  def list_names
    @job.each.with_index(1) do |job, i|
      puts "#{i}. #{job.name}" 
      
    end
  end

  def display(job)
    
    puts
    puts "Class name: #{job.name}"
    puts
    puts "#{job.skills[0]} - #{job.skills[1]}"
    puts
    puts "#{job.skills[2]} - #{job.skills[3]}"
    puts
    puts "#{job.skills[4]} - #{job.skills[5]}"
    puts
    puts "#{job.skills[6]} - #{job.skills[7]}"
    puts
    puts "#{job.skills[8]} - #{job.skills[9]}"
    puts
  end


  def menu
    input = nil
    
    loop do
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i <= @job.length && @job[input.to_i-1].skills
        
        display(@job[input.to_i-1])
        
        puts "Enter list to see all:"
        
      elsif input.to_i > 0 && input.to_i <= @job.length
        
        display(FireEmblem::Job.scrape(@job[input.to_i-1]))
        
        puts "Enter list to see all:"
        
      elsif input == "list"
        list_names
      elsif input == "bye"
        puts "Good luck, Professor. The fate of Fodlan is in your hands!"
        break
      else
        puts "Try again, Professor. If you're ready to leave, type bye."
      end
    end
  end
end
    
    
    
  
  

