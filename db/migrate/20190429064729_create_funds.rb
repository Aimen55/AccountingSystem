class CreateFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :funds do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
