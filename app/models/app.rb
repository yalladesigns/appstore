class App < ActiveRecord::Base
    
    has_many:transactions
    
    def self.search(search)
        where("title LIKE ?", "%#{search}%")
    end    
    


    def self.platforms(android)
        where("platform LIKE ?", "android")
    end 

end

