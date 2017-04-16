class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :platform
      t.integer :downloads

      t.timestamps
    end
  end
end
