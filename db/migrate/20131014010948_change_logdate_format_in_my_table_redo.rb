class ChangeLogdateFormatInMyTableRedo < ActiveRecord::Migration
  def self.up
  	change_column :hourlogs, :logdate, :string
  end

  def self.down
  	change_column :hourlogs, :logdate, :integer
  end
end
