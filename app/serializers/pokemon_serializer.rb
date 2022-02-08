class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :type1, :type2, :total, :hp, :attack, :defense, :sp_atk, :sp_def, :speed, :generation, :legendary

end
