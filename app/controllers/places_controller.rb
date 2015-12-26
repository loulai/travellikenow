class PlacesController < ApplicationController
	def new
	end

	def create
		@country = Country.find(params[:country_id])
		@place = Place.new(place_params)

		@place.save
		redirect_to country_path(@country)
	end

	def show
		@place = Place.find(params[:id])
	end

	private
		def place_params
			params.require(:place).permit(:title)
		end
end
