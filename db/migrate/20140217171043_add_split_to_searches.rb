class AddSplitToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :split, :boolean, default: false
  end
end
