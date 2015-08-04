class Subreddit < ActiveRecord::Base

has_many :links

before_save :parameterize_name

 def parameterize_name
   self.name = self.name.downcase
 end

 def to_param
   name
 end


end
