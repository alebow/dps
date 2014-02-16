class Search < ActiveRecord::Base
	belongs_to :client
	belongs_to :user
	validates :user_id, presence: true
	validates :client_id, presence: true
	validates :position, presence: true
	default_scope -> { order('created_at DESC') }

end
