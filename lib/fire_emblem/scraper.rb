class FireEmblem::Scraper
  
  def initialize(job_name)
    @job = Job.new 
    @job.name = job_name
    @doc = Nokogiri::HTML(open("https://samurai-gamers.com/fire-emblem-three-houses/#{job_name}-class/"))