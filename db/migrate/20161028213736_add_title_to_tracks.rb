class AddTitleToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :title, :string
    add_column :tracks, :category, :string
  end
end
