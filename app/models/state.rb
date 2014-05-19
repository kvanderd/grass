class State < ActiveRecord::Base
	has_many :identities
	has_many :users, through: :identities
end