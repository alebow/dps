class ChangeFormatInSearches < ActiveRecord::Migration
  def change
  	change_column :searches, :fee, :float
  end
end
