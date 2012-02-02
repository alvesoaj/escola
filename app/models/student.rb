class Student < ActiveRecord::Base
	belongs_to :course

	validates_associated :course
	validates :course_id, :name, :email, :presence => true

	before_create :configurar_aluno

	def configurar_aluno
		self.invalido = true
	end
end
