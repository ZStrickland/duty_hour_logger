class RemoveLogdateFromHourslog < ActiveRecord::Migration
  def change
  	remove_column :hourlogs, :logdate
  end
end
