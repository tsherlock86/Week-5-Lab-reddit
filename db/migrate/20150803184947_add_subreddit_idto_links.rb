class AddSubredditIdtoLinks < ActiveRecord::Migration
  def change
      add_column :subreddits, :subreddit_id, :integer
  end
end
