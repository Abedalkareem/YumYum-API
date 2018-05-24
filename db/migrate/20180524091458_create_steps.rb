class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.int :order
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
