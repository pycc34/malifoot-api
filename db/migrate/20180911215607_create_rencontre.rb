class CreateRencontre < ActiveRecord::Migration[5.2]
  def change
    create_table :rencontres do |t|
      t.integer :home
      t.integer :away
      t.string :date
      t.string :hour
      t.string :score
      t.references :match, foreign_key: true
      t.references :competition, foreign_key: true
    end
  end
end
