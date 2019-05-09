class CreateLedgers < ActiveRecord::Migration[5.2]
  def change
    create_table :ledgers do |t|
    	t.float :value
    	t.datetime :effective_date
    	t.integer :fund_id, foreign_key: true
    	t.integer :account_id, foreign_key: true
    	t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
