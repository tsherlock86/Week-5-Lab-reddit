class Link < ActiveRecord::Base

has_many :votes

has_many :downvotes

belongs_to :user

  # def upvote
  #
  #   votes.first.upvote += 1
  # end
  #
  # def downvote
  #   votes.first.upvote += 1
  # end
  #
  # def scoring
  #   votes.first.upvote - votes.first.downvote
  # end
  #
  # def upvotecount
  #   votes.first.upvote
  # end
  #
  # def downvotecount
  #     votes.first.downvote
  # end



end
