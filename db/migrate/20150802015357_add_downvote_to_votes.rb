class AddDownvoteToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :downvote, :integer
  end
end
