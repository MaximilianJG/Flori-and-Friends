class CreateLuckyDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :lucky_dogs do |t|
      t.string :name

      t.timestamps
    end
  end
end
