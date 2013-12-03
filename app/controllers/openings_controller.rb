class OpeningsController < ApplicationController
  def new
   @opening = Opening.new
   @condition = Condition.all
  end
  def index
   @opening = Opening.all
  end
  def create
	  @opening = Opening.new(params.require(:opening).permit(:title, :jtype, :description))
   if @opening.save
     cond = params[:opening][:condition_ids]
     cond.each do |cid|
      @condition = OpeningCondition.create(:opening_id => @opening.id, :condition_id => cid)
      @condition.save
     end
     redirect_to @opening
   end
	 end 
  def show
	  @opening = Opening.find(params[:id])
	 end
  def edit
  @opening = Opening.find(params[:id]) 
  
  end
  def update
   @opening = Opening.find(params[:id])
   @opening.update(params.require(:opening).permit(:title, :jtype, :description))
   redirect_to @opening 
  end 
  def destroy
   @opening=Opening.find(params[:id])
   @opening.destroy
   redirect_to openings_path
  end
  #def opening_params
  # params.require(:opening).permit(:title, :type, :description)
	# end
end
