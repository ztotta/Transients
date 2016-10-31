class AddUploadDateTrackUrlToLengthTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :upload_date, :date
    add_column :tracks, :track_url, :string
    add_column :tracks, :length, :integer
  end
end
