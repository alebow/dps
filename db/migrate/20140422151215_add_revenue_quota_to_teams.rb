class AddRevenueQuotaToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :revenue_quota, :number
  end
end
