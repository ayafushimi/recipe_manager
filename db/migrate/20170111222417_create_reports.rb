class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.belongs_to :recipe, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.integer :rate
      t.text :comment

      t.timestamps
    end
  end
end
