class AcademicsController < ApplicationController
    def new
        @academic = Academic.new
    end
end
