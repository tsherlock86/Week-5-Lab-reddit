class RemoveSubredditIdtoLinks < ActiveRecord::Migration
  def change
      remove_column :subreddits, :subreddit_id, :integer
  end
end
