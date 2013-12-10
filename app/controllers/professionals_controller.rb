class ProfessionalsController < ApplicationController
  def new
    @professional = Professional.new
  end
  
  def create 
    @seeker = Seeker.find(params[:seeker_id])
    @professional = @seeker.professionals.create(professional_params)
    if @professional.save
       @seeker.fire_state_event(:addprofessional)
      render "projects/new"
      
    end
  end
  
  private
  def professional_params
    params.require(:professional).permit(:company_name, :job_title, :worked_technology, :join_date, :left_date)
  end
end
