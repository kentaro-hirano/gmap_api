class MapsController < ApplicationController
  def index
  end

  def map
    
    # binding.pry
    
    results = Geocoder.search(params[:address])
    @latlng = results.first.coordinates
    respond_to do |format|
      format.js 
    end
  end
end
