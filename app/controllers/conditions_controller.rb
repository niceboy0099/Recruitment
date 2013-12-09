class ConditionsController < ApplicationController
    def new
        @condition=Condition.new
    end
    
    def index
        @condition = Condition.all
    end
    
    def create
        @condition = Condition.new(condition_params)
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
        @condition.update(condition_params)
        redirect_to @condition 
    end 
    
    def destroy
        @condition=Condition.find(params[:id])
        @condition.destroy unless @condition.blank?
        redirect_to conditions_path
    end
    
    private
    def  condition_params
    params.require(:condition).permit(:title, :description)
  end
end
