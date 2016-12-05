class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :cooking_time, null: false
      t.string :steps, null: false
    end
  end
end
