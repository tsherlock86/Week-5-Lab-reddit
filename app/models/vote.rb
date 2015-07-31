class Vote < ActiveRecord::Base

belongs_to :link, polymorphic: true

end
