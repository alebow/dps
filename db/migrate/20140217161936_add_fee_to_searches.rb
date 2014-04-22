class AddFeeToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :fee, :integer
  end
end
