# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aluno do
    nome "MyString"
    matricula "MyString"
    curso nil
    materiais nil
  end
end
