class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :message
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
