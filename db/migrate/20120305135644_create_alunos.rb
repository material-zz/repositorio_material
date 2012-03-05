class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :matricula
      t.references :curso
      t.references :materiais

      t.timestamps
    end
    add_index :alunos, :curso_id
    add_index :alunos, :materiais_id
  end
end
