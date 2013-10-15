class ChangeLogdateFormatInMyTable < ActiveRecord::Migration
  def self.up
  	change_column :hourlogs, :logdate, :integer
  end

  def self.down
  	change_column :hourlogs, :logdate, :integer
  end
end
