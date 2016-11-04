class AddLengthSelectToTrack2 < ActiveRecord::Migration
  def change
#      remove_column :tracks, :length_select, :string
            # had to get them even on heroku...will this mess things up in the future?
      add_column :tracks, :length_select, :string
  end
end
