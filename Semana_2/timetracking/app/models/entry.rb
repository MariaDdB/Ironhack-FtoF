class Entry < ActiveRecord::Base
	belongs_to :project
	#validates :hours, :minutes, numericality: true, presence: true
	#validates :date, presence: true
	#validates_associated :project 
end
