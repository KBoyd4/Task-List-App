class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_all_task_lists
  # jarp: layout was not set
  layout 'todo_list'
  
  private 
    def get_all_task_lists
      @all_task_lists = Tasklist.all
    end
	
end
