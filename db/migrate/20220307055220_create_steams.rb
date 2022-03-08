class CreateSteams < ActiveRecord::Migration[6.1]
  def change
    create_table :steams do |t|
      t.string :name
      t.string :applist
      t.integer :appid

      t.timestamps
    end
  end
end
