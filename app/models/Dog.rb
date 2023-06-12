class Dog < ActiveRecord::Base
    belongs_to :breeder
    belongs_to :shelter
end