class Team < ActiveRecord::Base
	has_many :users
	has_many :searches, through: :users
end
