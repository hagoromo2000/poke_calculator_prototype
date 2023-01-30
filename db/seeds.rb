# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

1.upto(1008) do |i| # ポケモンの初期データ作成
  file = File.open("json/pokemon_json_data/pokemon#{i}.json", "r") # ポケモンの基本情報を取得
  json_data = file.read
  file.close
  data = JSON.parse(json_data) # jsonデータをハッシュに変換

  file = File.open("json/pokemon_species_json_data/pokemon-species#{i}.json", "r") # ポケモンの日本語名のデータを取得
  json_data = file.read
  file.close
  name_data = JSON.parse(json_data) # jsonデータをハッシュに変換

  name = name_data["names"][0]["name"]

  type1 = data["types"][0]["type"]["name"]
  type2 = data["types"][1]["type"]["name"] if data["types"][1] 

  ability1 = data["abilities"][0]["ability"]["name"]
  ability2 = data["abilities"][1]["ability"]["name"] if data["abilities"][1]
  ability3 = data["abilities"][2]["ability"]["name"] if data["abilities"][2]

  hp = data["stats"][0]["base_stat"]
  attack = data["stats"][1]["base_stat"]
  defense = data["stats"][2]["base_stat"]
  special_attack = data["stats"][3]["base_stat"]
  special_defense = data["stats"][4]["base_stat"]
  speed = data["stats"][5]["base_stat"]

  Pokemon.create!(
    name: name,
    type1: type1,
    type2: type2,
    ability1: ability1,
    ability2: ability2,
    ability3: ability3,
    hp: hp,
    attack: attack,
    defense: defense,
    special_attack: special_attack,
    special_defense: special_defense,
    speed: speed
  )
end

# Itemのデータをcsvから取得
CSV.foreach('db/item.csv', headers: true) do |row|
  Item.create!(
    name: row['Name']
  )
end




# タイプ名の日本語化処理
Pokemon.where(type1: "normal").update_all(type1: "ノーマル")
Pokemon.where(type2: "normal").update_all(type2: "ノーマル")
Pokemon.where(type1: "fighting").update_all(type1: "かくとう")
Pokemon.where(type2: "fighting").update_all(type2: "かくとう")
Pokemon.where(type1: "flying").update_all(type1: "ひこう")
Pokemon.where(type2: "flying").update_all(type2: "ひこう")
Pokemon.where(type1: "poison").update_all(type1: "どく")
Pokemon.where(type2: "poison").update_all(type2: "どく")
Pokemon.where(type1: "ground").update_all(type1: "じめん")
Pokemon.where(type2: "ground").update_all(type2: "じめん")
Pokemon.where(type1: "rock").update_all(type1: "いわ")
Pokemon.where(type2: "rock").update_all(type2: "いわ")
Pokemon.where(type1: "bug").update_all(type1: "むし")
Pokemon.where(type2: "bug").update_all(type2: "むし")
Pokemon.where(type1: "ghost").update_all(type1: "ゴースト")
Pokemon.where(type2: "ghost").update_all(type2: "ゴースト")
Pokemon.where(type1: "steel").update_all(type1: "はがね")
Pokemon.where(type2: "steel").update_all(type2: "はがね")
Pokemon.where(type1: "fire").update_all(type1: "ほのお")
Pokemon.where(type2: "fire").update_all(type2: "ほのお")
Pokemon.where(type1: "water").update_all(type1: "みず")
Pokemon.where(type2: "water").update_all(type2: "みず")
Pokemon.where(type1: "grass").update_all(type1: "くさ")
Pokemon.where(type2: "grass").update_all(type2: "くさ")
Pokemon.where(type1: "electric").update_all(type1: "でんき")
Pokemon.where(type2: "electric").update_all(type2: "でんき")
Pokemon.where(type1: "psychic").update_all(type1: "エスパー")
Pokemon.where(type2: "psychic").update_all(type2: "エスパー")
Pokemon.where(type1: "ice").update_all(type1: "こおり")
Pokemon.where(type2: "ice").update_all(type2: "こおり")
Pokemon.where(type1: "dragon").update_all(type1: "ドラゴン")
Pokemon.where(type2: "dragon").update_all(type2: "ドラゴン")
Pokemon.where(type1: "dark").update_all(type1: "あく")
Pokemon.where(type2: "dark").update_all(type2: "あく")
Pokemon.where(type1: "fairy").update_all(type1: "フェアリー")
Pokemon.where(type2: "fairy").update_all(type2: "フェアリー")


