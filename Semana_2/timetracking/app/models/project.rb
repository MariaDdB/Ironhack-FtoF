class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true,
					 uniqueness: true,
					 length: {maximum: 30},
					 format: {with: /\A[a-zA-z\s\dñÑ]+\z/}


	def self.iron_find param
		Project.where(id: param).first
	end

	def self.clean_old 
		projects = where("created_at < ?", Time.now.midnight - 1.week)
		projects.destroy_all
	end
	
	def self.last_created_projects num
		Project.order(created_at: :desc).limit(num)
	end

	def total_hours_in_month month, year
		all_entries = self.entries
		all_selected_entries = all_entries.select do |entry|
			entry.date.month == month && entry.date.year == year
		end
		all_selected_entries.reduce(0){|sum, entry| sum + entry.hours}
	end
end
