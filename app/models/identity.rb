class Identity < ActiveRecord::Base
	belongs_to :names
	belongs_to :users
	belongs_to :states
end