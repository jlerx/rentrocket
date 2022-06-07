class AddNameToOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :new, :string
  end
end
