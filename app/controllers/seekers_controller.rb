class SeekersController < ApplicationController
  def new
    @seeker=Seeker.new
  end
  
  def index
    @opening = Opening.all
  end
 
  def create
  
    @seeker = Seeker.new(seeker_params)
    if @seeker.save
      render "seekers/complete"
    end  
  end 
  
  private
  def seeker_params
    params.require(:seeker).permit(:firstname, :lastname, :email, :contact, :gender,  :birth, :localaddress, :permanentaddress )
  end
end
