class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.integer :link_id
      t.integer :vote

      t.timestamps null: false
    end
  end
end
