class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.int :value
      t.references :user, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
