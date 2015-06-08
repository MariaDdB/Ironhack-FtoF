class Letter < ActiveRecord::Base
	belongs_to :word

	validates :letter_name, presence: true
	validates :letter_name, format: {with: /[a-zA-Z]/}

end
