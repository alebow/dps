class Client < ActiveRecord::Base
	has_many :searches
  	accepts_nested_attributes_for :searches
end
