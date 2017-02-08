class SubtypeVehiclesController < ApplicationController
	def index
    	items = SubtypeVehicle.all
    	render json: items, :status => 200
	end

    def show
        item = SubtypeVehicle.find(params[:id])
        render json: item, :status => 200
    end

	def indexOfTypeVehicle
		pa = params[:idtypevehicle];
		if pa == 'false'
			pa = 0;
		end
    	items = SubtypeVehicle.where("type_vehicle_id = ?",pa).all
    	render json: items, :status => 200
	end
end
