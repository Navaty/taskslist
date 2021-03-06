class ApplicationController < ActionController::Base

  before_action :set_format

 # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
 # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 # rescue_from ActionController::RoutingError, with: :render_not_found_response

  #just for test task
  #protect_from_forgery with: :exception

  private

  def render_unprocessable_entity_response(exception)
    render json: exception.record.errors, status: :unprocessable_entity
  end

  def render_not_found_response(exception)
    render json: { error: exception.message }, status: :not_found
  end


  def set_format
  	request.format = :json
  end

end
