class Teacher < ActiveRecord::Base
	has_many :courses

	validates :name, :email, :presence => true
end