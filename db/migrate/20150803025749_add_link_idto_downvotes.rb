class AddLinkIdtoDownvotes < ActiveRecord::Migration
  def change
    add_column :downvotes, :link_id, :integer
  end
end
