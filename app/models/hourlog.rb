class Hourlog < ActiveRecord::Base
	validates :user_id, presence: true
	validates :h_study, presence: true, numericality: true
	validates :h_sleep, presence: true, numericality: true
	validates :logdate, presence: true, :uniqueness => {:scope => :user_id}
	validates :h_lecture, presence: true
	validates :h_mandatory, presence: true
	validates :primary_class, presence: true
	validates :h_extracurriculars, presence: true
	validates :meal, presence: true
end
