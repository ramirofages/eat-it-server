class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.references :supplier, index: true, foreign_key: true
      t.references :request, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end