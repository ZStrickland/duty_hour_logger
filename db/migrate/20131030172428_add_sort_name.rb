class AddSortName < ActiveRecord::Migration
  def change
  	add_column :users, :sort_name, :string
  end
end
