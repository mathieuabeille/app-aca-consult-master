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

ActiveRecord::Schema.define(version: 20171203185154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "contratcdds", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "debut"
    t.date     "fin"
    t.string   "poste"
    t.boolean  "video"
    t.boolean  "periodeessai"
    t.integer  "employee_id"
    t.integer  "user_id"
    t.integer  "heurehebdo"
    t.integer  "remuneration"
    t.index ["employee_id"], name: "index_contratcdds_on_employee_id", using: :btree
    t.index ["user_id"], name: "index_contratcdds_on_user_id", using: :btree
  end

  create_table "contrats", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "nomposte"
    t.string   "heures"
    t.datetime "jour1debut"
    t.datetime "jour2debut"
    t.datetime "jour3debut"
    t.datetime "jour4debut"
    t.datetime "jour5debut"
    t.datetime "jour6debut"
    t.datetime "jour7debut"
    t.datetime "jour1fin"
    t.datetime "jour2fin"
    t.datetime "jour3fin"
    t.datetime "jour4fin"
    t.datetime "jour5fin"
    t.datetime "jour6fin"
    t.datetime "jour7fin"
    t.boolean  "video"
    t.boolean  "periodeessai"
    t.integer  "user_id"
    t.boolean  "jour1"
    t.boolean  "jour2"
    t.boolean  "jour3"
    t.boolean  "jour4"
    t.boolean  "jour5"
    t.boolean  "jour6"
    t.boolean  "jour7"
    t.integer  "employee_id"
    t.float    "remuneration"
    t.index ["employee_id"], name: "index_contrats_on_employee_id", using: :btree
    t.index ["user_id"], name: "index_contrats_on_user_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "empcivilite"
    t.string   "prenom"
    t.string   "nom"
    t.string   "adresse"
    t.date     "datedenaissance"
    t.string   "lieudenaissance"
    t.string   "nationalite"
    t.string   "nsecu"
    t.string   "permissejournum"
    t.date     "permissejourexp"
    t.string   "permissejourloc"
    t.date     "permissejourdate"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "entite"
    t.string   "specifique_id"
    t.string   "fournisseur"
    t.string   "marque"
    t.string   "nom"
    t.string   "description"
    t.string   "serial"
    t.float    "value"
    t.string   "duree_garantie"
    t.string   "emplacement"
    t.date     "date_achat"
    t.date     "fin_amortissement"
    t.string   "numero_comptabilite"
    t.string   "processeur"
    t.string   "RAM"
    t.string   "memoire"
    t.string   "systeme_exploitation"
    t.string   "numero_OS"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.text     "auteur"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_reviews_on_invoice_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "nomentreprise"
    t.string   "adresseentreprise"
    t.string   "numerosiret"
    t.string   "numerocnaf"
    t.string   "formejuridique"
    t.string   "sexerepresentant"
    t.string   "nomrepresentant"
    t.string   "prenomrepresentant"
    t.string   "fonctionrepresentant"
    t.string   "numerourssaf"
    t.string   "regionurssaf"
    t.string   "adresseurssaf"
    t.string   "ville"
    t.string   "conventioncollective"
    t.string   "conventioncollectivetype"
    t.string   "caisseretraite"
    t.string   "caisseprevoyance"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "contratcdds", "employees"
  add_foreign_key "contratcdds", "users"
  add_foreign_key "contrats", "employees"
  add_foreign_key "contrats", "users"
  add_foreign_key "invoices", "users"
  add_foreign_key "reviews", "invoices"
end
