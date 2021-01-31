class CreateDogCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_categories do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
