## QUESTION 1
require 'pry'
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
## pokemon[0][:abilities][0][:ability][:url]
answer_1 = ""
pokemon.each do |pokemon|
   if pokemon[:name] == "bulbasaur"
     pokemon.each do |key1, val1|
       if key1 == :abilities
         val1.each do |hash|
           hash.each do |key2, val2|
             if key2 == :ability
               val2.each do |key3, val3|
                 if key3 == :url
                   answer_1 = val3
                 end
               end
             end
           end
         end
       end
     end
   end
 end
answer_1
# How would you return the first pokemon with base experience over 40?
answer_2 = pokemon.find { |pokemon| pokemon[:base_experience] > 40 }
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
answer_3 = pokemon.select { |pokemon| pokemon[:base_experience] > 40 }
# How would you return an array of all of the pokemon's names?
answer_4 = []
pokemon.each do |pokemon|
  pokemon.each do |key1, val1|
    if key1 == :name
      answer_4 << val1
    end
  end
end
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
answer_5 = !!(pokemon.find { |pokemon| pokemon[:weight] > 60 })

binding.pry
p 'eof'
