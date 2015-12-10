class User < ActiveRecord::Base
	has_many :tasks
	
	def full_name
		"#{first_name.capitalize} #{last_name.capitalize}"
  end
end
