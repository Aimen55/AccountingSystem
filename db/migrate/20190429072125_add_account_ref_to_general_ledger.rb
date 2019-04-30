class AddAccountRefToGeneralLedger < ActiveRecord::Migration[5.2]
  def change
    add_reference :general_ledgers, :account, foreign_key: true
  end
end
