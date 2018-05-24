class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.int :duration
      t.string :image
      t.references :steps, foreign_key: true
      t.references :ingredients, foreign_key: true

      t.timestamps
    end
  end
end
