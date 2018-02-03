class AddThemeRefToShopAdmin < ActiveRecord::Migration
  def change
    add_reference :shop_admins, :theme, index: true, foreign_key: true
  end
end
