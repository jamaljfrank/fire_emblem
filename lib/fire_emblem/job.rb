class InvalidType < StandardError; end

class FireEmblem::Job 
  @@all = []
  attr_accessor :name, :skills
  
  def initialize(name)
    self.name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.scrape_names
    name_doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/"))
    words = ["Beginner" , "Classes", "Intermediate", "Advanced", " "]
    re = Regexp.union(words)
    list = name_doc.search('table')[13..16].text.gsub(re, "-").sub(" ", "-").split("\n")
    
    list.delete_if {|element| element.include?("▼")}
    list.delete_if {|element| element.length <= 1}
    names = list.sort
    names.map do |name|
      job = self.new(name)
      job
    end
  end

  def self.scrape(job)
    
    doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job.name}-class/"))
    table = doc.search('table')[3]
    name_words = ["Fire" , "Emblem:" , "Three" , "Houses" , "-" , "Class" , "Name" , "Effect" , "\n"]
    skill_words = ["Name" , "Effect"]
    nm = Regexp.union(name_words)
    sk = Regexp.union(skill_words)
    scraped_skills = table.text.to_s.gsub(sk, "").split("\n")
    scraped_skills.delete_if {|element| element.length == 0}

    job.skills = scraped_skills
    job
    
  end
end

  
