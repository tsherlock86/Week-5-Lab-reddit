class AddCommentIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :nested_id, :integer
    add_column :comments, :nested_type, :string
  end
end
