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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141118135333) do

  create_table "exames", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exames_pacientes", force: true do |t|
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.integer  "exame_id"
    t.integer  "quantidade"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exames_pacientes", ["exame_id"], name: "index_exames_pacientes_on_exame_id"
  add_index "exames_pacientes", ["medico_id"], name: "index_exames_pacientes_on_medico_id"
  add_index "exames_pacientes", ["paciente_id"], name: "index_exames_pacientes_on_paciente_id"

  create_table "medicos", force: true do |t|
    t.string   "nome"
    t.string   "crm"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", force: true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "uf"
    t.date     "dtnascto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
