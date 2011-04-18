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
		else
			@latitude = 40.44260328858159
			@longitude = -79.94316458702087
		end
	else
		if params[:latitude]
			@latitude = params[:latitude]
		else
			@latitude = 40.44260328858159
		end
		if params[:longitude]
			@longitude = params[:longitude]
		else
			@longitude = -79.94316458702087
		end
	end
  end

end
