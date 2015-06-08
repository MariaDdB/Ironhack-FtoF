Project.create name: "Ironhack", description: "Trabajando con rails"

(0..100).each do |projects|
	Project.create name: "Ironhack", description: "Trabajando con rails" 
end 

50.times do |x|
	rand_project_id = rand Project.count
	Entry.create project_id: rand_project_id, hours: rand(24), minutes: rand(60)
end