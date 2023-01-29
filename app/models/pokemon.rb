class Pokemon < ApplicationRecord

  def get_pokemon_data
    
    i = 1
    while i <= 1008
      raw_response = Faraday.get "https://pokeapi.co/api/v2/pokemon/#{i}" # 基本情報取得
      name_response = Faraday.get "https://pokeapi.co/api/v2/pokemon-species/#{i}" # 日本語名の取得
      
      name = @name_response["names"][0]["name"]

      type1 = @response["types"][0]["type"]["name"]
      type2 = @response["types"][1]["type"]["name"] if @response["types"][1] 

      ability1 = @response["abilities"][0]["ability"]["name"]
      ability2 = @response["abilities"][1]["ability"]["name"] if @response["abilities"][1]
      ability3 = @response["abilities"][2]["ability"]["name"] if @response["abilities"][2]

      hp = @response["stats"][0]["base_stat"]
      attack = @response["stats"][1]["base_stat"]
      defense = @response["stats"][2]["base_stat"]
      special_attack = @response["stats"][3]["base_stat"]
      special_defense = @response["stats"][4]["base_stat"]
      speed = @response["stats"][5]["base_stat"]
    end

  end
end
