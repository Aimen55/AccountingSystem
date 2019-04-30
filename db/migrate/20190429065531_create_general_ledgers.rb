class CreateGeneralLedgers < ActiveRecord::Migration[5.2]
  def change
    create_table :general_ledgers do |t|
      t.float :value
      t.date :effectivedate

      t.timestamps
    end
  end
end
