class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :test_id
      t.decimal :percentage

      t.timestamps null: false
    end
  end
end
