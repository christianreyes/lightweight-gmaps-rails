class HomeController < ApplicationController
  include HomeHelper
  
  def index
    if params[:zoom]
		@zoom = params[:zoom]
	else
		@zoom = 17
	end
	if params[:place]
		#parse_place located in HomeHelper
		cords = parse_place(params[:place])
		if cords
			@latitude = cords[0]
			@longitude = cords[1]
			@place = params[:place]
		else
			@latitude = 25.315981290
			@longitude = 51.438674926
		end
	else
		if params[:latitude]
			@latitude = params[:latitude]
		else
			@latitude = 25.315981290
		end
		if params[:longitude]
			@longitude = params[:longitude]
		else
			@longitude = 51.438674926
		end
	end
  end

end
