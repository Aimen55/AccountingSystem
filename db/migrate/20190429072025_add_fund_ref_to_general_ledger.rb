class AddFundRefToGeneralLedger < ActiveRecord::Migration[5.2]
  def change
    add_reference :general_ledgers, :fund, foreign_key: true
  end
end
