class AccountTypesController < ApplicationController

	before_action :authenticate_user!

	def index
  	@account_types = AccountType.all
	end

	def show
  	@account_type = AccountType.find(params[:id])
	end

	def new
  	@account_type = AccountType.new
     @account_type.accounts.build
	end

	def create
    @account_type = AccountType.create(account_type_params)
    if @account_type.save
      redirect_to @account_type
    else
      render 'new'
  	end
	end

	def edit
  	@account_type = AccountType.find(params[:id])
    
	end
  
	def update
    @account_type = AccountType.find(params[:id])
    if @account_type.update(account_type_params)
      redirect_to @account_type
    else
      render 'edit'
  	end
	end

	def destroy
    @account_type = AccountType.find(params[:id])
    @account_type.destroy
 
    redirect_to @account_type
	end

	private

	def account_type_params
  		params.require(:account_type).permit(:name, :accounts_attributes => [:name, :description])
	end

end
