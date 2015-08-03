class RemoveUpvoteFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :upvote, :integer
    remove_column :votes, :downvote, :integer
  end
end
