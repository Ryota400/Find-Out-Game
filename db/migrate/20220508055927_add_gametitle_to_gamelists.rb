class AddGametitleToGamelists < ActiveRecord::Migration[6.1]
  def change
    add_column :gamelists, :gametitle, :string
  end
end
