class AddCloseDateToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :close_date, :datetime
  end
end
