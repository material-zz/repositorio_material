class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :curso
      t.integer :id_aluno

      t.timestamps
    end
  end
end
