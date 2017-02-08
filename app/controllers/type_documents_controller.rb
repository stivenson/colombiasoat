class TypeDocumentsController < ApplicationController
	def index
    	items = TypeDocument.all
    	render json: items, :status => 200
	end
end
