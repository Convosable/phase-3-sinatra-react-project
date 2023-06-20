class Dog < ActiveRecord::Base
    belongs_to :shelter

    def self.huskies 
        self.where(breed: "husky")
    end

end