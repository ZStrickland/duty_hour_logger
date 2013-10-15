class AddLogdateBackAsDate < ActiveRecord::Migration
  def change
  	add_column :hourlogs, :logdate, :date
  end
end
