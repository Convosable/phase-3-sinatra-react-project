class Shelter < ActiveRecord::Base
    has_many :dogs
    has_many :cats
end


