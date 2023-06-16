class DropBreedersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :breeders
  end
end
