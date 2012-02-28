class CreateMateriais < ActiveRecord::Migration
  def change
    create_table :materiais do |t|
      t.string :disciplina
      t.text :descricao
      t.string :tipo
      t.date :dtentrada
      t.date :dtsaida

      t.timestamps
    end
  end
end
