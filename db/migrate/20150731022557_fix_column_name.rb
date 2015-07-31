class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :links, :vote, :votes
  end
end
