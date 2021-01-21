class ProjectsController < ApplicationController
	def index
		@projects = Project.includes(:todos)
		render formats: :json
	end

end
