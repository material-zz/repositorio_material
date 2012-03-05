class Aluno < ActiveRecord::Base
  belongs_to :curso
  belongs_to :materiais
end
