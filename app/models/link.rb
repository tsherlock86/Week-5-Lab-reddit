class Link < ActiveRecord::Base

has_many :votes, dependent: :destroy 

belongs_to :user

end
