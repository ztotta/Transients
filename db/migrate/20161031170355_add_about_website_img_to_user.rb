class AddAboutWebsiteImgToUser < ActiveRecord::Migration
  def change
    add_column :users, :about, :string
    add_column :users, :website, :string
    add_column :users, :img_url, :string
  end
end
