class TechnicalsController < ApplicationController
  def new
      @technical = Technical.new
  end
end
