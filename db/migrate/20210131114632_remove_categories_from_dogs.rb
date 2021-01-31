class RemoveCategoriesFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :category, :string
  end
end
