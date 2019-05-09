class AccountsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_account, only: [:show, :edit, :update]

  def index
    @accounts =Account.all
  end

  def show
  end

  def new
    @account =Account.new
  end

  def create
    @account =Account.new(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    
    if @account.update(account_params)
      redirect_to @account
    else
      render 'edit'
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
 
    redirect_to @account
  end


  def account_params
    params.require(:account).permit(:name, :description, :account_type_id)
  end

  def set_account
    @account =Account.find(params[:id])
  end
end
