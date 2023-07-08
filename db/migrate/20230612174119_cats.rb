class Cats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image_url
      t.integer :age
      t.string :breed
      t.string :sex
      t.float :weight
      t.string :size
      t.integer :shelter_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
