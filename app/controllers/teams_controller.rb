class TeamsController < ApplicationController
	before_action :signed_in_user, only: [:index, :edit, :update, :create, :new, :destroy]

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
		@users = @team.users
		@searches = @team.searches
	end

end
