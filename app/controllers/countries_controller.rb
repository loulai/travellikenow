class CountriesController < ApplicationController
	def index
		@countries = Country.all.each.sort_by {|c| c.title.downcase } #sorts all countries alphabetically
	end

	def destroy
		@country = Country.find(params[:id])
		@country.destroy

		redirect_to countries_path
	end

	def new
		@country = Country.new
	end

	def create
		@country = Country.new(country_params)

		if @country.save
			redirect_to @country
		else
			render 'new'
		end
	
	end

	def show
		@country = Country.find(params[:id])
	end

	private
		def country_params
			params.require(:country).permit(:title)
		end

end
