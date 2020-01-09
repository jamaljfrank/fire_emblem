class InvalidType < StandardError; end

class FireEmblem::Job 
  @@all = []
  attr_accessor :name, :skills

  def initialize(name, skills)
    @name = name 
    @skills = skills
    @@all << self 
  end
end

  
