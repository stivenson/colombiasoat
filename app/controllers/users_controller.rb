class UsersController < ApplicationController

    def show
        item = User.find(params[:id])
        render json: item, :status => 200
    end

    def showWithCredentials
        item = User.where(" email = ? and password = ? and rol_id = ? ", login_params[:email],login_params[:password],1) 
        render json: item, :status => 200
    end


    def create
        res = false
        if user_params[:id] == false
            @user = User.new(user_params.symbolize_keys.except(:id))
            res = @user.save
            if res
                render json: @user, :status => 200 
            else
                render json: res, :status => 200
            end 
        else
            res = User.update(user_params[:id],user_params.symbolize_keys.except(:id))
            render json: true, :status => 200
        end 
    end

    def showWithPlate 
        items = User.joins(:vehicle)
                    .select('users.*')
                    .where('vehicles.plate = ?',params[:idplate])
                    .first
        render json: items
    end

	def messageInit
		render json: "ESTA ES LA RAÍZ DE UNA API, POR FAVOR INDIQUE EL RECURSO. Att Stivenson", :status => 200
	end

    private

        def user_params
            params.require(:user).permit(:id,:type_document_id,:rol_id,:number_document,:names,:surnames,:phone,:email,:password)
        end
    

        def login_params
            params.require(:user).permit(:email,:password)
        end


end
