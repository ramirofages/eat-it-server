class AddColumnEnabledToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :enabled, :boolean
  end
end
