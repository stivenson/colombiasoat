class VehiclesController < ApplicationController

    def show
        item = Vehicle.joins(:subtype_vehicle).select('vehicles.*,subtype_vehicles.type_vehicle_id as type_vehicle').find(params[:id])
        render json: item, :status => 200
    end

    def create
        res = false
        if vehicle_params[:id] == false
            @vehicle = Vehicle.new(vehicle_params.symbolize_keys.except(:id))
            res = @vehicle.save
            compObj = Vehicle.joins(:subtype_vehicle).select('vehicles.*,subtype_vehicles.type_vehicle_id as type_vehicle').find(@vehicle.id)
            if res
                render json: compObj, :status => 200 
            else
                render json: res, :status => 200
            end 
        else
            res = Vehicle.update(vehicle_params[:id],vehicle_params.symbolize_keys.except(:id))
            render json: true, :status => 200
        end 
    end

    def showWithPlate 
        items = Vehicle.joins(:subtype_vehicle).select('vehicles.*,subtype_vehicles.type_vehicle_id as type_vehicle').where('vehicles.plate = ?',params[:idplate]).first
        render json: items
    end

    private

        def vehicle_params
            params.require(:vehicle).permit(:id,:plate,:age,:subtype_vehicle_id,:user_id,:n_passengers,:cylinder,:tonnes)
        end
    
end
