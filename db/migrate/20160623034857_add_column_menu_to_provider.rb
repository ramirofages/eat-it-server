class AddColumnMenuToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :menu, :string
  end
end
