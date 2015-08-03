class Vote < ActiveRecord::Base

belongs_to :link

belongs_to :user

validates_uniqueness_of :link_id, :scope => :user_id


end
