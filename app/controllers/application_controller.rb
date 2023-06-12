class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/test" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/shelters" do
    shelters = Shelter.all
    shelters.to_json
  end

  get "/breeders" do
    breeders = Breeder.all
    breeders.to_json
  end

  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get "/cats" do
    cats = Cat.all
    cats.to_json
  end

end
