class CreateSteams < ActiveRecord::Migration[6.1]
  def change
    create_table :steams do |t|
      t.string :name
      t.integer :appid

      t.timestamps
    end
  end
end
