class AddColorToOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :color, :string
  end
end