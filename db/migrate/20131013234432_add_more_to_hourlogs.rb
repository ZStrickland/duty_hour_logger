class AddMoreToHourlogs < ActiveRecord::Migration
  def change
  	add_column :hourlogs, :meal, :integer
  	add_column :hourlogs, :h_lecture, :integer
  	add_column :hourlogs, :h_mandatory, :integer
  	add_column :hourlogs, :h_extracurriculars, :integer
  	add_column :hourlogs, :anxious, :integer
  	add_column :hourlogs, :sad, :integer
  	add_column :hourlogs, :depressed, :integer
  	add_column :hourlogs, :energy, :integer
  	add_column :hourlogs, :hopeless, :integer
  	add_column :hourlogs, :sleep_trouble, :integer
  	add_column :hourlogs, :awake_trouble, :integer
  	add_column :hourlogs, :focus, :integer
  	add_column :hourlogs, :no_school, :integer
  	add_column :hourlogs, :logdate, :string
  	add_column :hourlogs, :primary_class, :string
  	add_column :hourlogs, :exercise, :integer
  end
end
