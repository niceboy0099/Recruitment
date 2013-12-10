class TechnicalsController < ApplicationController
  def new
      @technical = Technical.new
  end
  
  def create 
    @seeker = Seeker.find(params[:seeker_id])
    @technical = @seeker.technicals.create(technical_params)
    if @technical.save
       @seeker.fire_state_event(:addtechnical)
       render "professionals/new"
    end      
  end
  
  private
  def technical_params
    params.require(:technical).permit(:programming_skills, :web_skills, :database, :otheres) 
  end
  
end
