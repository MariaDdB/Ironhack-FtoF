class Contact < ActiveRecord::Base
	has_many :numbers
	has_many :addresses

	validates_associated :addresses
	validates_associated :phone_number

	def self.search_by_letter letter
		@contacts = where('name like ?', "#{letter}%")
	end 
end
