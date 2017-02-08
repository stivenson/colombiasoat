class SoatsController < ApplicationController
	def index
    	items = Soat.joins(:vehicle).joins(:vehicle => :subtype_vehicle).select("soats.*,subtype_vehicles.prima,subtype_vehicles.description as d_vehicle,vehicles.plate").all
    	render json: items, :status => 200
	end

    def create
        @soat = Soat.new(soat_params.symbolize_keys.except(:id))
        lastsoats = Soat.where('vehicle_id = ? ',soat_params[:vehicle_id]).order(' id DESC ').first
        res = @soat.save
        @exp = false
        if res


            # Small validation start date of soat
            if lastsoats != nil
                if lastsoats.expiration != nil
                    @exp = lastsoats.expiration
                else
                    lastsoats.update_attribute(:expiration, lastsoats.created_at + 1.years)
                    @exp = lastsoats.created_at + 1.years
                end
                @soat.reload
                if @exp >= @soat.created_at
                    @soat.update_attribute(:created_at, @exp + 1.days)
                    @soat.update_attribute(:expiration, (@exp + 1.days) + 1.years)
                end
            end


            # Send email
            itemWithAll = Soat.joins(:vehicle).joins(:vehicle => :subtype_vehicle).joins(:vehicle => :user).where("soats.id = ? ",@soat.id).select("users.email,users.names,soats.*,subtype_vehicles.prima,subtype_vehicles.description as d_vehicle,vehicles.plate").first
            require 'mandrill'  
            m = Mandrill::API.new 'snDx51XmNH2JnLhGiqpbcA'
            message = {  
             :subject=> "Resumen Compra Soat desde ColombiaSoat",  
             :from_name=> "ColombiaSoat",  
             :text=>"Resumen Compra Soat",  
             :to=>[{:email=> itemWithAll.email,:name=> itemWithAll.names}],  
             :html=>'<html><table style="background: #e5e5e5;" class="table"><tbody><tr><td><b>Placa</b><br/>'+itemWithAll.plate+'</td></tr><tr><td><b>Descripción</b><br/>'+itemWithAll.d_vehicle+'</td></tr><tr><td><b>Valor prima</b><br/>$'+itemWithAll.prima.to_s+'</td></tr><tr><td><b>Contribución Fosyga</b><br/>$'+(itemWithAll.prima*0.5).to_s+'</td></tr><tr><td><b>Tasa RUNT</b><br/>$1.610</td></tr><tr><td><b>Total</b><br/>$'+(itemWithAll.prima + (itemWithAll.prima*0.5) + 1610).to_s+'</td></tr></tbody></table></html>',  
             :from_email=>"app@colombiasoat.com"  
            }  
            sending = m.messages.send message  



            render json: @soat, :status => 200 
        else
            render json: res, :status => 200
        end 
    end

	def indexOfVehicle
		idv = params[:idvehicle];
		if idv == 'false'
			idv = 0;
		end
        items = Soat.where("vehicle_id = ?",idv).all
        render json: items
	end

    def showWithPlate 
        items = Soat.joins(:vehicle)
                    .select('soats.*')
                    .where('vehicles.plate = ?',params[:idplate])
                    .all
        render json: items
    end

    private

        def soat_params
            params.require(:soat).permit(:vehicle_id,:number_cart,:holder_cart,:date_end_cart,:code_card,:number_quotas)
        end

end
