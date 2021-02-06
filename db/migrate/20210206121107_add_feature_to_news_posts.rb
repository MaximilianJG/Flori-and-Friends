class AddFeatureToNewsPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :news_posts, :featured, :boolean
  end
end
