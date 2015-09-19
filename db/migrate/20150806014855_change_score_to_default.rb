class ChangeScoreToDefault < ActiveRecord::Migration
  def change
    change_column :links, :score, :integer, :default => 0
  end
end
