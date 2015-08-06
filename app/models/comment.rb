class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  belongs_to :nested, :polymorphic => true
  has_many :comments, :as => :nested
end
