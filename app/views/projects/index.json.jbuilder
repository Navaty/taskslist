json.array! @projects do |project|
	json.extract! project, :id, :title
	json.todos do
		json.array! project.todos do |todo|
				json.extract! todo, :id, :text, :isComplited
		end
	end
end
