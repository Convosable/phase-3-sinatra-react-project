class Shelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :location
      t.string :bio
      t.integer :established_date
    end
  end
end
