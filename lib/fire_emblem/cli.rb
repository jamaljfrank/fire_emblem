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
    puts
    
    list_names
    menu
  end
  
  

  def list_names
    @names = FireEmblem::Job.scrape_names
    @names.each.with_index(1) do |job_name, i|
      puts "#{i}. #{job_name}" 
      
    end
  end

  def display(job_page)
    
    puts
    puts "Class name: #{job_page.name}"
    puts
    puts "#{job_page.skills[0]} - #{job_page.skills[1]}"
    puts
    puts "#{job_page.skills[2]} - #{job_page.skills[3]}"
    puts
    puts "#{job_page.skills[4]} - #{job_page.skills[5]}"
    puts
    puts "#{job_page.skills[6]} - #{job_page.skills[7]}"
    puts
    puts "#{job_page.skills[8]} - #{job_page.skills[9]}"
    puts
  end


  def menu
    input = nil
    
    loop do
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i <= @names.length 
        
        display(FireEmblem::Job.scrape(@names[input.to_i-1]))
        
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
    
    
    
  
  

