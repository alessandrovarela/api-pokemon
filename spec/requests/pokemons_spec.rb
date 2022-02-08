require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  describe "REQUESTS /pokemons" do
    it "works! 200 OK" do
      get pokemons_path
      expect(response).to have_http_status(200)
    end


    it "Show - Pokemon ID 1 -  JSON" do
      get "/pokemons/1"
      expect(response.body).to include_json(
        data: {
          id: "1",
          type: "pokemons",
          attributes: {
              name: (be_kind_of String),
              type1: (be_kind_of String),
              type2: (be_kind_of String)
          }
        }      
      )
    end

    it 'create - JSON' do
      headers = { "Content-Type" => "application/json" ,  "ACCEPT" => "application/json"}
      post "/pokemons?name=NewPokemon'",  :headers=> headers
      expect(response).to have_http_status(:created)
    end

    it 'update - JSON' do
      headers = { "Content-Type" => "application/json" ,  "ACCEPT" => "application/json"}
      patch "/pokemons/800?name=NamePatch'",  :headers=> headers
      expect(response).to have_http_status(:ok)
    end 
    
    it 'destroy - JSON' do
      headers = { "Content-Type" => "application/json" ,  "ACCEPT" => "application/json"}
      pokemon = Pokemon.first
      expect{ delete "/pokemons/#{pokemon.id}", headers: headers }.to change(Pokemon, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end    
  end
end
