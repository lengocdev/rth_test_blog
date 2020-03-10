class AddContentToPosts < ActiveRecord::Migration[5.2]
  def change
    # add_column :posts, :content, :text
    add_column :posts, :created_at, :datetime
    add_column :posts, :updated_at, :datetime
  end
end
