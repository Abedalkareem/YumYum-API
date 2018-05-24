class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :order
      t.string :description
      t.string :image
      t.integer :recipe_id

      t.timestamps
    end
  end
end
