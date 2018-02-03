class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :theme_name
      t.text :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
