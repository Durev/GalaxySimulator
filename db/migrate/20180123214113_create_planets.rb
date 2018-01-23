class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.references :star, foreign_key: true

      t.timestamps
    end
  end
end
