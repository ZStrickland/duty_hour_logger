class AddExerciseToHourlogs < ActiveRecord::Migration
  def change
  	add_column :hourlogs, :exercise, :integer
  end
end
