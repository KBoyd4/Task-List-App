class Tasklist < ActiveRecord::Base
	has_many :tasks
	validates :name, :description, presence: { message: "must be present" }
	validates :name, uniqueness: true
	def to_s
		name
	end
end
