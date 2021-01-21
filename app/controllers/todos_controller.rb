class TodosController < ApplicationController
	before_action :set_todo, only: [:update]

	def create
		todo = Todo.new(todo_params)
		if todo.save
			render json: todo, status: 201
		else
			render json: {errors: todo.errors}, status: :unprocessable_entity
		end
	end

	def update
		@todo.update!(isComplited: !@todo.isComplited)
		render json: @todo, status: :ok
	end

	private	
	def todo_params
		params.require(:todo).permit(:text, :project_id, :isComplited, :project_attributes => [:title])
	end

	def set_todo
		@todo = Todo.find(params[:id])
	end
end

