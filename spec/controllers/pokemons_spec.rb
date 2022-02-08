require 'rails_helper'

#class Hash
#  def json(parts)
#    ary = parts.split(">")
#    ary.reduce(self) do |memo, key|
#      memo.fetch(key.to_s.strip) if memo
#    end
#  end
#end

describe PokemonsController, type: :controller do

  #it 'request index and return 406 NOT ACCEPTABLE' do
    #get :index
    #expect(response).to have_http_status(:not_acceptable)
  #end

  it "PokemonsController: GET index - return #{:ok}" do
  #  request.accept = 'application/vnd.api+json'
    get :index
    expect(response).to have_http_status(:ok)
  end

  it 'GET pokemons/:id' do
    pokemon = Pokemon.first
    get :show, params: { id: pokemon.id }
    response_body = JSON.parse(response.body)

    expect(response_body.fetch('data').fetch('id')).to eq(pokemon.id.to_s)
    expect(response_body.fetch('data').fetch('type')).to eq('pokemons')
    expect(response_body.fetch('data').fetch('attributes').fetch('name')).to eq(pokemon.name)
 
    #expect(response_body.json('data > attributes > name')).to eq(contact.name)
  end

end