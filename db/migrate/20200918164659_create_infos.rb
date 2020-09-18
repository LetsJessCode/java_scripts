class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :fav_drink
      t.string :least_fav
      t.boolean :recommend
      t.text :comment
      t.references :java_shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
