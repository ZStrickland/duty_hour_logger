class AddPrimaryClassToHourlogs < ActiveRecord::Migration
  def change
  	add_column :hourlogs, :primary_class, :string
  end
end
