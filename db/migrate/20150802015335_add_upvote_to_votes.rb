class AddUpvoteToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :upvote, :integer
  end
end
