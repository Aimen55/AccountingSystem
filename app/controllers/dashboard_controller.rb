class DashboardController < ApplicationController

before_action :authenticate_user!

	def index
		@funds = Fund.all
		@ledgers =Ledger.all
	end
end
