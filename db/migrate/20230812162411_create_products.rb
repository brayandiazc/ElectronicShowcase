class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.integer :price
      t.date :release_date
      t.string :link_to_website
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
