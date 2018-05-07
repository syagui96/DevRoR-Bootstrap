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

ActiveRecord::Schema.define(version: 0) do

  create_table "Estacionamientos", primary_key: "IdEstac", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "DescrpEstac", limit: 200
    t.string "DirecEstac", limit: 200
    t.string "TelefEstac", limit: 7
    t.decimal "DimenEstac", precision: 16, scale: 2
    t.string "DirecGMEstac", limit: 200
    t.string "TipoEst", limit: 200
    t.string "DistEstac", limit: 200
    t.decimal "PrecxHorEstac", precision: 16, scale: 2
    t.string "UbicEstac", limit: 200
    t.string "FotoEstac", limit: 200
  end

  create_table "ServiciosAd", primary_key: "IdServAd", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "TipoServ", limit: 200
    t.string "DescServ", limit: 200
    t.decimal "Tarifa", precision: 16, scale: 2
  end

end
