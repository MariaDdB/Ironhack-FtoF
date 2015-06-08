class Address < ActiveRecord::Base
	belongs_to :contact

	validates_associated :contact
end
