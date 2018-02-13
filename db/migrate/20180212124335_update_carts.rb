class UpdateCarts < ActiveRecord::Migration
  def change
    change_column :carts, :status, :string, default: "in-progress" 
  end
end
