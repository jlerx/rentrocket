class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.integer :price
      t.string :brand
      t.string :model
      t.integer :year
      t.string :horsepower
      t.string :km_age
      t.string :body_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
