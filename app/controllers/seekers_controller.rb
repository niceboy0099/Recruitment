class SeekersController < ApplicationController
 def new
  @seeker=Seeker.new
  @academic=@seeker.academic.build
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
    #params.require(:post).permit(:title, :text)
  end
end
