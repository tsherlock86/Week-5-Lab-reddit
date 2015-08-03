class Link < ActiveRecord::Base

has_many :votes

has_many :downvotes

belongs_to :user


def scoring
  self.votes.count - self.downvotes.count
end



end
