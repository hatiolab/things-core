class CreateTracks < ActiveRecord::Migration

	def change
		create_table :tracks do |t|
			t.string :cid, :null => false, :limit => 16
			t.string :fid, :null => false, :limit => 16
			t.string :fvr, :null => false, :limit => 16
			t.string :tid, :null => false, :limit => 16
			t.string :did, :null => false, :limit => 16
			t.string :stm, :null => false, :limit => 32
			t.string :ttm, :null => false, :limit => 32
			t.string :ctm, :null => false, :limit => 32
			t.integer :kct, :null => false
			t.float :vlc
			t.float :a_vlc
			t.float :dst
			t.float :lat, :null => false
			t.float :lng, :null => false
			t.float :p_lat
			t.float :p_lng
			t.float :gx, :null => false
			t.float :gy, :null => false
			t.float :gz, :null => false
			t.string :f_img, :limit => 255
			t.string :r_img, :limit => 255
			t.references :domain, :null => false
		end

		add_index :tracks, [:id], :unique => true, :name => :ix_tracks_0
	end

end
