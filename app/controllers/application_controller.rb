class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # not using this read route... just for requirments
  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.to_json(include: [:shelter])
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

  patch "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.update(
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

  # not using this read route... just for requirments
  get "/cats" do
    cats = Cat.all
    cats.to_json
  end

  get "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.to_json(include: [:shelter])
  end

  post "/cats" do
    cat = Cat.create(
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
    cat.to_json
  end

  patch "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.update(
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
    cat.to_json
  end

  delete "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.destroy
    cat.to_json
  end

  get "/shelters" do
    shelters = Shelter.all
    shelters.to_json(include:[:dogs, :cats])
  end

  get "/shelters/:id" do
    shelter = Shelter.find(params[:id])
    shelter.to_json(include: [:dogs, :cats])
  end

  post "/shelters" do 
    shelter = Shelter.create(
      name: params[:name],
      location: params[:location],
      bio: params[:bio],
      established_date: params[:established_date]
    )
    shelter.to_json(include: [:dogs, :cats])
  end

  delete "/shelters/:id" do
    shelter = Shelter.find(params[:id])
    shelter.destroy
    shelter.to_json(include: [:dogs, :cats])
  end
end