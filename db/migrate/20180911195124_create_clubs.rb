class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.string :stadium
    end
  end
end
