class InvalidType < StandardError; end


class FireEmblem::Job 
 attr_accessor :name, :a1, :a2, :a3, :a4, :a5, :a1effect, :a2effect, :a3effect, :a4effect, :a5effect
 
  
  
 
  
  def add_job(job)
    if !job.is_a?(FireEmblem::Job)
      raise InvalidType, "must be a FireEmblem::Job"
    else
      @jobs << job
  end
end
end


  
