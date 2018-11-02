class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.string :immat
      t.string :chassis
      t.string :couleur
      t.string :anc_immat
      t.string :ptac
      t.string :model
      t.integer :places
      t.integer :puissance
      t.integer :cheveaux
      t.date :date_carte_grise
      t.date :dmc
      t.integer :marque
      t.integer :immat
    end
  end
end
