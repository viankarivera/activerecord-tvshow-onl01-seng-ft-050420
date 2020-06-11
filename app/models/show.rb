class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum('rating')
    end 

    def self.most_popular_show
        #self.where('rating = ?', self.highest_rating)
        #asc order 
        #pick first show based off that
        self.order(rating: :DESC).first
    end

    def self.lowest_rating
        self.minimum('rating')
    end 

    def self.least_popular_show
        self.order(rating: :ASC).first
    end 

    def self.ratings_sum
        self.sum('rating')
    end 

    def self.popular_shows
        self.where('rating > 5', self.most_popular_show)
    end 

    def self.shows_by_alphabetical_order
        self.order(name: :ASC)
    end 
end 