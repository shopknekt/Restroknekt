class AddShopAdminIdToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :shop_admin_id, :integer
  end
end
