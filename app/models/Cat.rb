class Cat < ActiveRecord::Base
    belongs_to :breeder
    belongs_to :shelter
end
