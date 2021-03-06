class ProtectedController < ApplicationController
	before_action :require_login, except: [:index, :show]
	

	def require_login
		unless session[:user_id]
			flash[:message] = "You must be logged in to view that page"
			redirect_to login_path
		end
	end
	
	def set_active_user
		@active_user = User.find(session[:user_id])
	end
	
end
