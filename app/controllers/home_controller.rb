class HomeController < ApplicationController
  def index
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
	if params[:zoom]
		@zoom = params[:zoom]
	else
		@zoom = 17
	end
  end

end
