class TodoListController < ApplicationController
  
  
  
  def index
	if !params.nil?
		if params.has_key?(:id)
			@tasklist = Tasklist.find(params[:id])
		end
	end
  end

 end
