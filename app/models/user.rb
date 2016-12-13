class User < ApplicationRecord
	has_many :events
	has_secure_password

	ROLE = ['Admin', 'Architect'].freeze
	
	scope :by_role, -> (role_name) { where(role: role_name) }

	validates :username, presence: true, uniqueness: true
end
