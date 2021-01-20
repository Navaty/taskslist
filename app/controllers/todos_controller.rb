class TodosController < ApplicationController
	before_action :set_todo, only: [:show, :update]

	def create
		todo = Todo.new(todo_params)
		render json: todo, status: 201
	end

	def update
		@todo.update!(isComplited: !@todo.isComplited)
		render json: @todo, status: :ok
	end

	private	
	def todo_params
		params.require(:todo).permit(:text, :project_id, :isComplited, :projects_attributes => [:title])
	end

	def set_todo
		@todo = Todo.find(params[:id])
	end
end

