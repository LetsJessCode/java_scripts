class CreateJavaShops < ActiveRecord::Migration[6.0]
  def change
    create_table :java_shops do |t|
      t.string :shop_name

      t.timestamps
    end
  end
end
