class Link < ActiveRecord::Base

has_many :votes

has_many :downvotes

belongs_to :user

belongs_to :subreddit

 has_many :comments

# before_save :linkchecking

# def linkchecking
#   link = Link.where(:url => self.url).first
#   if link == true
#     self.votes.create
#   else
#
#   end
# end



end
