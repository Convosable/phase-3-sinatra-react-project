class Shelter < ActiveRecord::Base
    has_many :dogs
    has_many :cats

    def allDogs 
        self.dogs.all
    end
end