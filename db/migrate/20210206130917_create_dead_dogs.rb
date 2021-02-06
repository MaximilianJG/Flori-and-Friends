class CreateDeadDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dead_dogs do |t|
      t.string :name
      t.timestamps
    end
  end
end
