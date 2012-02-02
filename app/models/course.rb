class Course < ActiveRecord::Base
	belongs_to :teacher
	has_many :students

	validates_associated :teacher

	validates :teacher_id, :name, :description, :presence => true

	validates :name, :uniqueness => true
end
