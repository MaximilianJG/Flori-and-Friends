class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.string :race
      t.date :birthdate
      t.string :category

      t.timestamps
    end
  end
end
