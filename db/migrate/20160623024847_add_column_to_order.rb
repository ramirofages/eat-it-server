class AddColumnToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :provider, index: true, foreign_key: true
  end
end
