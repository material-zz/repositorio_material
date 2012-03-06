class CreateTipomaterials < ActiveRecord::Migration
  def change
    create_table :tipomaterials do |t|
      t.string :nome
      t.string :tipo

      t.timestamps
    end
  end
end
