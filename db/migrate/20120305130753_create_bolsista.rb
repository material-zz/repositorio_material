class CreateBolsista < ActiveRecord::Migration
  def change
    create_table :bolsista do |t|
      t.string :nome
      t.string :turno

      t.timestamps
    end
  end
end
