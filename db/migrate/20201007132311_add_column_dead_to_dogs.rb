class AddColumnDeadToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :dead, :boolean, default: false
  end
end
