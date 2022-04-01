class CreateDetailes < ActiveRecord::Migration[6.1]
  def change
    create_table :detailes do |t|
      t.string :name
      t.string :header
      t.integer :steamid
      t.string :release_date

      t.timestamps
    end
  end
end
