require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Cat.create(
        name: 'Garfield',
        age: 41,
        enjoys: 'eating lasagna',
        image: 'https://en.wikipedia.org/wiki/Garfield_%28character%29#/media/File:Garfield_the_Cat.svg'
      )

      # Make a request
      get '/cats'

      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do
      # The params we are going to send with the request
      cat_params = {
        cat: {
          name: 'Tom',
          age: 6,
          enjoys: 'chasing Jerry',
          image: 'https://static.wikia.nocookie.net/tomandjerry/images/1/14/Tom_Cat_2.png/revision/latest?cb=20200412163656'
        }
      }
  
      # Send the request to the server
      post '/cats', params: cat_params
  
      # Assure that we get a success back
      expect(response).to have_http_status(200)
  
      # Look up the cat we expect to be created in the db
      cat = Cat.first
  
      # Assure that the created cat has the correct attributes
      expect(cat.name).to eq 'Tom'
    end
  end

end