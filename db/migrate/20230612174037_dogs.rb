class Dogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :image_url
      t.integer :age
      t.string :breed
      t.string :sex
      t.float :weight
      t.integer :shelter_id
      t.integer :breeder_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
