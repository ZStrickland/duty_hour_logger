class Drop < ActiveRecord::Migration
  def change
  	drop_table :hour_logs
  end
end
