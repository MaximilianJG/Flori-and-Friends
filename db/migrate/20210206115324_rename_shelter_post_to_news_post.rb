class RenameShelterPostToNewsPost < ActiveRecord::Migration[6.0]
  def change
    rename_table('shelter_posts', 'news_posts')
  end
end
