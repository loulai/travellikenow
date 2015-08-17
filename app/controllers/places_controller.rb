class PlacesController < ApplicationController
	def new
	end

	def create
		@place = Place.new(place_params)

		@place.save
		redirect_to @place
	end

	def show
		@place = Place.find(params[:id])
	end

	private
		def place_params
			params.require(:place).permit(:title)
		end
end
