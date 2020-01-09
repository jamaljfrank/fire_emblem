class InvalidType < StandardError; end

class FireEmblem::Job 
  @@all = []
  attr_accessor :name, :skills

  def initialize(name, url)
    @name = name 
    @url = url 
    @@all << self 
  end
end

  
