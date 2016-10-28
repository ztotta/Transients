class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :plays
      t.datetime :date_uploaded
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
