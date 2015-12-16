class HomeController < ProtectedController
  
  before_action :set_active_user

  def index
  	# jarp: you have allowed all index actions access without login so this action throws an error
  	#		session is not yet set
  end
  
  def set_active_user
		@active_user = User.find(session[:user_id])
  end
end
