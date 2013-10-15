class ChangeLogdateFormatInMyTableAgain < ActiveRecord::Migration
  def self.up
  	change_column :hourlogs, :logdate, :date
  end

  def self.down
  	change_column :hourlogs, :logdate, :string
  end
end
