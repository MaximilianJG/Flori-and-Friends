class RemoveDogIdInContacts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :contacts, :dog
  end
end
