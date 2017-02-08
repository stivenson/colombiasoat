class TypeVehiclesController < ApplicationController
	def index
    	items = TypeVehicle.all
    	render json: items, :status => 200
	end
end
