class RemoveColumnFromOrder < ActiveRecord::Migration
  def change
    remove_reference :orders, :supplier, index: true, foreign_key: true
  end
end
