class CreateJavaBars < ActiveRecord::Migration[6.0]
  def change
    create_table :java_bars do |t|
      t.string :shop_name
      t.string :fav_drink
      t.string :least_fav
      t.boolean :recommend
      t.text :comment
      t.references :person

      t.timestamps
    end
  end
end
