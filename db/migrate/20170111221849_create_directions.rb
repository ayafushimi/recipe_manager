class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.belongs_to :recipe, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
