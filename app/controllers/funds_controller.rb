class FundsController < ApplicationController
	before_action :authenticate_user!
	def index
		@funds =Fund.all
	end

	def show
		@fund =Fund.find(params[:id])
	end
end
