class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index(:ingredients,'recipe_id')
  end
end
