class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end
  
  def create
    @seeker = Seeker.find(params[:seeker_id])
    @project = @seeker.projects.create(project_params)
    if @project.save
       @seeker.fire_state_event(:addproject)
       render "seekers/complete"
    end
  end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :technology, :description)
  end
  
end
