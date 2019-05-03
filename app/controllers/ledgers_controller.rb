class LedgersController < ApplicationController
	before_action :authenticate_user!
	def index
    @ledgers =Ledger.all
  end

  def show
    @ledger =Ledger.find(params[:id])
  end

  def new
    @ledger =Ledger.new
  end

  def create
    @ledger =Ledger.create(ledger_params)
    if @ledger.save
      redirect_to @ledger
    else
      render 'new'
    end
  end

  def edit
    @ledger =Ledger.find(params[:id])
  end
  
  def update
    @ledger = Ledger.find(params[:id])
    
    if @ledger.update(ledger_params)
      redirect_to @ledger
    else
      render 'edit'
    end
  end

  def destroy
    @ledger = Ledger.find(params[:id])
    @ledger.destroy
 
    redirect_to @ledger
  end



  private
    def ledger_params
      params.require(:ledger).permit(:value, :effective_date, :account_id, :fund_id)
    end
end
