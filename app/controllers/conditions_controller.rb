class ConditionsController < ApplicationController
  def new
   @condition=Condition.new
  end
  def index
   @condition = Condition.all
  end
  def create
	  @condition = Condition.new(params.require(:condition).permit(:title, :description))
   if @condition.save
    redirect_to @condition
   end
	 end 
  def show
	  @condition = Condition.find(params[:id])
	 end
	 def edit
   @condition = Condition.find(params[:id]) 
  
  end
  def update
   @condition = Condition.find(params[:id])
   @condition.update(params.require(:condition).permit(:title, :description))
   redirect_to @condition 
  end 
end
