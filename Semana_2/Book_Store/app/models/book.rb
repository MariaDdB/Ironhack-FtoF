class Book < ActiveRecord::Base
	def update_rating 
        self.n_votes += 1
        self.rating / self.n_votes
    end
end
