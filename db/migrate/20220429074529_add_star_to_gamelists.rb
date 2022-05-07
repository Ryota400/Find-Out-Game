class AddStarToGamelists < ActiveRecord::Migration[6.1]
  def change
    add_column :gamelists, :star, :integer
  end
end
