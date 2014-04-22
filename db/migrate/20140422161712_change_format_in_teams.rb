class ChangeFormatInTeams < ActiveRecord::Migration
  def change
  	change_column :teams, :revenue_quota, :float
  end
end
