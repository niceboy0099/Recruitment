class AcademicsController < ApplicationController
    def new
        @academic = Academic.new
    end
    def index
    end
    def create
        @seeker = Seeker.find(params[:seeker_id])
        @academic = @seeker.academics.create(academic_params)
        if @academic.save
          @seeker.fire_state_event(:addacademic)
          render "technicals/new"
        end
    end
    private
    def academic_params
        params.require(:academic).permit(:course, :percentage, :pass_year, :board, :stream, :institute, :place, :medium)
    end
end
