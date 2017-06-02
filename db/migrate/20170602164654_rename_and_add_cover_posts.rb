class RenameAndAddCoverPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :banner_image_url, :cover
    add_column :posts, :cover_small, :string
  end
end
