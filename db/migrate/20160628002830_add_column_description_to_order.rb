class AddColumnDescriptionToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :description, :string
  end
end
