# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306150558) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.integer  "curso_id"
    t.integer  "materiais_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "alunos", ["curso_id"], :name => "index_alunos_on_curso_id"
  add_index "alunos", ["materiais_id"], :name => "index_alunos_on_materiais_id"

  create_table "bolsista", :force => true do |t|
    t.string   "nome"
    t.string   "turno"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "curso"
    t.integer  "id_aluno"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gerenciadors", :force => true do |t|
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materiais", :force => true do |t|
    t.string   "nome"
    t.integer  "bolsista_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "materiais", ["bolsista_id"], :name => "index_materiais_on_bolsista_id"

  create_table "tipomaterials", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
