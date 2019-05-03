class GeneralLedgersController < ApplicationController
	before_action :authenticate_user!
	def index
    @ledgers =GeneralLedger.all
  end

  def show
    @ledger =GeneralLedger.find(params[:id])
  end

  def new
    @ledger =GeneralLedger.new
  end

  def create
    @ledger =GeneralLedger.create(ledger_params)
    if @ledger.save
      redirect_to @ledger
    else
      render 'new'
    end
  end

  def edit
    @ledger =GeneralLedger.find(params[:id])
  end
  
  def update
    @ledger = GeneralLedger.find(params[:id])
    
    if @ledger.update(ledger_params)
      redirect_to @ledger
    else
      render 'edit'
    end
  end

  def destroy
    @ledger = GeneralLedger.find(params[:id])
    @ledger.destroy
 
    redirect_to @ledger
  end



  private
    def ledger_params
      params.require(:ledger).permit(:value, :effectivedate, :account_id, :fund_id)
    end
end
