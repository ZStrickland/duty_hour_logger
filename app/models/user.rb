class User < ActiveRecord::Base
	has_secure_password
	has_many :hourlogs, dependent: :destroy, order: 'logdate DESC'
	before_save {email.downcase!}
	before_create :create_remember_token
	before_create :create_full_name
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :name, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@louisville.edu/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	validates :password, length: {minimum: 6}
	validates :year, presence: true
	validates :password_confirmation, presence: true

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end

		def create_full_name
			self.name = "#{first_name.capitalize} #{last_name.capitalize}"
			self.sort_name = "#{last_name.capitalize}, #{first_name.capitalize}"
		end
end
