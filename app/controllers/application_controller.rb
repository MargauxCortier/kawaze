class ApplicationController < ActionController::Base

	before_action :rans

	def rans
	  @search = Forum.ransack(params[:q])
	  @forums = @search.result(distinct: true)
	end 

	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	  added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
	  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
	  devise_parameter_sanitizer.permit :account_update, keys: added_attrs
	end
end
