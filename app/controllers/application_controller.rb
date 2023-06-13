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

  post "/dogs" do
    dog = Dog.create(
      name: params[:name],
      image_url: params[:image_url],
      age: params[:age],
      breed: params[:breed],
      sex: params[:sex],
      weight: params[:weight],
      size: params[:size],
      shelter_id: params[:shelter_id],
      breeder_id: params[:breeder_id],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    dog.to_json
  end

  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end

  get "/cats" do
    cats = Cat.all
    cats.to_json
  end

end
