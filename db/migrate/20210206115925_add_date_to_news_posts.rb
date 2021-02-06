class AddDateToNewsPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :news_posts, :date, :date
  end
end
