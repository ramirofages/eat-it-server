class RemoveColumnRequestFromOrder < ActiveRecord::Migration
  def change
    remove_reference :orders, :request, index: true, foreign_key: true
  end
end
