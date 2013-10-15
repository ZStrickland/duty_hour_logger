class CreateHourlogs < ActiveRecord::Migration
  def change
    create_table :hourlogs do |t|
      t.integer :user_id
      t.integer :h_study
      t.integer :h_sleep

      t.timestamps
    end
  end
end
