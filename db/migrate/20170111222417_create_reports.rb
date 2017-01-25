class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.integer :rate
      t.text :comment

      t.timestamps
    end
  end
end
