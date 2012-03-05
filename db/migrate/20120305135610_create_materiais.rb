class CreateMateriais < ActiveRecord::Migration
  def change
    create_table :materiais do |t|
      t.string :nome
      t.references :bolsista

      t.timestamps
    end
    add_index :materiais, :bolsista_id
  end
end
