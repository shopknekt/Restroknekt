class AddIsSuperAdminToShopAdmins < ActiveRecord::Migration
  def change
    add_column :shop_admins, :is_super_admin, :boolean, default: false
  end
end
