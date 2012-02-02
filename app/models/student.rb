class Student < ActiveRecord::Base
	belongs_to :course

	validates_associated :course

	validates :course_id, :name, :email, :presence => true
end
