class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.integer :time
      t.text :link

      t.timestamps
    end
  end
end
