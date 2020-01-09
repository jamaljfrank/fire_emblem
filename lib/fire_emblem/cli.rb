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
    list
    menu
  end
  
  def list 
   
    @list = FireEmblem::Scraper.new.name_array
    @list.each.with_index(1) do |job_name, i|
      puts "#{i}. #{job_name}" 
      
    end
  end

  def menu
    input = nil
    
    loop do
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i < @list.length
        job_page = FireEmblem::Scraper.new.scrape_name(@list[input.to_i-1])
        
        puts job_page.scrape_skills
        puts "Enter list to see all:"
        
      elsif input == "list"
        list
      elsif input == "bye"
        puts "Good luck, Professor. The fate of Fodlan is in your hands!"
        break
      else
        puts "Try again, Professor. If you're ready to leave, type bye."
      end
    end
  end
end

    
    
    
  
  

