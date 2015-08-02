class Link < ActiveRecord::Base

has_many :votes, dependent: :destroy, :counter_cache :true

belongs_to :user

  def upvote
     Vote.create(votes.first.upvote += 1)
  end

  def downvote
    Vote.create(votes.first.downvote += 1)
  end

  def scoring
    upvotecount - downvotecount
  end

  def upvotecount
    votes.first.upvotes.size
  end

  def downvotecount
      votes.first.downvote.size
  end



end
