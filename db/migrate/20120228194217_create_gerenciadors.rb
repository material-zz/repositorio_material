class CreateGerenciadors < ActiveRecord::Migration
  def change
    create_table :gerenciadors do |t|
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
