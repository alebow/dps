class AddClosedToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :closed, :boolean, default: false
  end
end
