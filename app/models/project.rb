class Project < ApplicationRecord
	has_many :events
	belongs_to :client
end
