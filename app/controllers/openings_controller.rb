class OpeningsController < ApplicationController
    def new
        @opening = Opening.new
    end
  
  
    def index
        @opening = Opening.all
    end
  
    def create
        @opening = Opening.new(opening_params)
        if @opening.save
          cond = params[:opening][:condition_ids]
          cond.each do |cid|
              @condition = @opening.opening_conditions.create!(:condition_id => cid) unless cid.blank?
          end
        redirect_to @opening
        end
    end 
  
  
    def show
        @opening = Opening.find(params[:id])
        @conditions = @opening.opening_conditions
    end
    
    
    def edit
        @opening = Opening.find(params[:id]) 
        @condition = @opening.opening_conditions
    end
  
  
    def update
        @opening = Opening.find(params[:id])
        @opening.opening_conditions.destroy_all
        if @opening.update(opening_params)
            cond = params[:opening][:condition_ids]
            cond.each do |cid|
                @opening.opening_conditions.create!(:condition_id => cid) unless cid.blank?
            end
        end 
        redirect_to @opening 
    end 
  
  
    def destroy
        @opening=Opening.find(params[:id])
        @opening.destroy unless @opening.blank?
        redirect_to openings_path
    end
  
    private
    def opening_params
        params.require(:opening).permit(:title, :jtype, :description)
    end
    
end
