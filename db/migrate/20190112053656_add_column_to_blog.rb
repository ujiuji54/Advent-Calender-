class AddColumnToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :pagelink, :string
  end
end
