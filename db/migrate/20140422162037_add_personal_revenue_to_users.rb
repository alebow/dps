class AddPersonalRevenueToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personal_revenue, :float
  end
end
