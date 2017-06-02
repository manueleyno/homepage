class RemoveCoversmallFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :cover_small
  end
end
