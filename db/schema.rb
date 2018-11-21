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

ActiveRecord::Schema.define(version: 2018_11_11_021653) do

  create_table "avaliacaos", force: :cascade do |t|
    t.integer "estrelas"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banidos", force: :cascade do |t|
    t.boolean "permanente"
    t.date "termino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "convites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "denuncia", force: :cascade do |t|
    t.text "motivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "nome"
    t.string "modalidade"
    t.date "data"
    t.time "horario_inicio"
    t.time "horario_termino"
    t.string "periodicidade"
    t.string "local"
    t.text "descricao"
    t.boolean "convite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moderadors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.integer "sal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participacaos", force: :cascade do |t|
    t.boolean "is_host"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacaos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "name"
    t.string "apelido"
    t.string "email"
    t.string "celular"
    t.date "nascimento"
    t.string "sexo"
    t.string "senha"
    t.integer "sal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "extension"
  end

end
