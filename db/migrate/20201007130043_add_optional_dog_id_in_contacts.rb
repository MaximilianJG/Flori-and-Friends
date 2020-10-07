class AddOptionalDogIdInContacts < ActiveRecord::Migration[6.0]
  def change
    change_table :contacts do |t|
      t.references :dog, foreign_key: true
    end
  end
end
