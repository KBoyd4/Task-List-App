class Task < ActiveRecord::Base
	belongs_to :tasklist
	belongs_to :user
	validates :title, :priority, :duedate, :tasklist_id, presence: { message: "must be present" }
	validates :priority, numericality: true
	validates :priority, inclusion: { in: 1..10, message: 'needs to be between 1 and 10'  }
	
	def to_s
		title
	end
end
