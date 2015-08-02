class Link < ActiveRecord::Base

has_many :votes, dependent: :destroy

belongs_to :user

has_many :votes

def upvote
  @link = Link.find(params[:id])
  @link.votes.create
  @link.save
  redirect_to(links_path)
end

def downvote
  @link = Link.find(params[:id])
  @link.votes.first.destroy
  redirect_to(links_path)
end

def upvotedlink
  @link = Link.find(params[:id])
  @link.votes.create
  redirect_to (@link.url)
end


end
