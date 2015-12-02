class TodoListController < ApplicationController
  
  
  
  def index
	if !params.nil?
		if params.has_key?(:id)
			@tasklist = Tasklist.find(params[:id])
		else
			@tasklist = Tasklist.find(1)
		end
	else 
		@tasklist = Tasklist.find(1)
		
	end
  end
  
 end
