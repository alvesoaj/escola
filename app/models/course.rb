class Course < ActiveRecord::Base
	belongs_to :teacher
	has_many :students

	validates_presence_of :teacher_id
	validates_uniqueness_of :name
end
