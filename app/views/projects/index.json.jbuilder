json.array! @projects do |obj|
	json.id obj.id
	json.title obj.title
	json.todos do
		json.id obj.todos.id
		json.text obj.todos.text
		json.isComplited obj.todos.isCompleted
	end
end
