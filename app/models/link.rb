class Link < ActiveRecord::Base

has_many :votes, dependent: :destroy

belongs_to :user

  def upvote
    votes.first.upvote += 1
  end

  def downvote
    votes.first.downvote += 1
  end

  def scoring
    upvotecount - downvotecount
  end

  def upvotecount
    votes.first.upvote
  end

  def downvotecount
    votes.first.downvote
  end



end
