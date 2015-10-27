class StatementsController < ApplicationController

	def show
		respond_with Statement.find_by_name(params[:id])
	end

end
