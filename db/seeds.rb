# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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