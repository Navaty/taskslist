Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	constraints format: :json do
		resources :todos, only: [:create]
		resources :projects, only: [:index] do
			resources :todos, only: [:update, :show]
		end
	end
end
