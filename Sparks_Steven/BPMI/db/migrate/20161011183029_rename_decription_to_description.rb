class RenameDecriptionToDescription < ActiveRecord::Migration
  def change
  	rename_column :blogs, :decription, :description
  end
end
