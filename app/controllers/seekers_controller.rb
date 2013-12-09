class SeekersController < ApplicationController
  def new
    @seeker=Seeker.new
    @seeker.state = "academic"
  end
  
  def index
    @opening = Opening.all
  end
 
  def create
  
    @seeker = Seeker.new(seeker_params)
    if @seeker.save
       @seeker.state = "academic" 
      render "seekers/complete"
    end  
  end 
  
  private
  def seeker_params
    params.require(:seeker).permit(:firstname, :lastname, :email, :contact, :gender,  :birth, :localaddress, :permanentaddress, :state )
  end
end
