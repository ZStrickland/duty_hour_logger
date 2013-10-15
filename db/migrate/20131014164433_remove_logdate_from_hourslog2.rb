class RemoveLogdateFromHourslog2 < ActiveRecord::Migration
  def change
  	remove_column :hourlogs, :logdate
  end
end
