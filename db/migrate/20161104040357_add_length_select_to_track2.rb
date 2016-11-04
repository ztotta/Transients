class AddLengthSelectToTrack2 < ActiveRecord::Migration
  def change
#      remove_column :tracks, :length_select, :string
      add_column :tracks, :length_select, :string
  end
end
