class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.string :foot
      t.string :country
      t.references :club, foreign_key: true
    end
  end
end
