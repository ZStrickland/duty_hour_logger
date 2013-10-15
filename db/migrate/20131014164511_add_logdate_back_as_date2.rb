class AddLogdateBackAsDate2 < ActiveRecord::Migration
  def change
  	add_column :hourlogs, :logdate, :string
  end
end
