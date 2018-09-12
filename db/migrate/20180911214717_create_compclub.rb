class CreateCompclub < ActiveRecord::Migration[5.2]
  def change
    create_table :compclubs do |t|
      t.references :club, foreign_key: true
      t.references :competition, foreign_key: true
      t.integer :beginseason
      t.integer :endseason
    end
  end
end
