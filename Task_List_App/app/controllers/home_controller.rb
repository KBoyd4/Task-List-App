class HomeController < ProtectedController
  
  before_action :set_active_user
  def index
  end
  
  def set_active_user
		@active_user = User.find(session[:user_id])
  end
end
