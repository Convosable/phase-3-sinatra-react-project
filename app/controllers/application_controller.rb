class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # Shelter

  get "/shelters" do
    shelters = Shelter.all
    shelters.to_json(include:[:dogs, :cats])
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
  end


  # Dog

  post "/dogs" do
    shelter = Shelter.find(params[:shelter_id])
    dog = shelter.dogs.create(
      name: params[:name],
      image_url: params[:image_url],
      age: params[:age],
      breed: params[:breed],
      sex: params[:sex],
      weight: params[:weight],
      size: params[:size],
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
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    dog.to_json
  end

  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.destroy
  end


  # Cat

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
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    cat.to_json
  end

  delete "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.destroy
  end

end