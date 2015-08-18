class CountriesController < ApplicationController
	def index
		@countries = Country.all
	end

	def new
	end

	def create
		@country = Country.new(country_params)

		@country.save
		redirect_to @country
	end

	def show
		@country = Country.find(params[:id])
	end

	private
		def country_params
			params.require(:country).permit(:title)
		end

end
