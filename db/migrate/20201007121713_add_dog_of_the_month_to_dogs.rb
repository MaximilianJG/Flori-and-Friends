class AddDogOfTheMonthToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :dog_of_the_month, :boolean, default: false
  end
end
