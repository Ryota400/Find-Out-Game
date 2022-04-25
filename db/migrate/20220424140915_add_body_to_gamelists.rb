class AddBodyToGamelists < ActiveRecord::Migration[6.1]
  def change
    add_column :gamelists, :body, :string
  end
end
