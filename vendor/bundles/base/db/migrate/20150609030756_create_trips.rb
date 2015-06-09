class CreateTrips < ActiveRecord::Migration

	def change
		create_table :trips do |t|
			t.string :cid, :null => false, :limit => 32
			t.string :fid, :null => false, :limit => 32
			t.string :fvr, :null => false, :limit => 32
			t.string :did, :null => false, :limit => 32
			t.float :s_lat, :null => false
			t.float :s_lng, :null => false
			t.float :lat
			t.float :lng
			t.float :e_lat
			t.float :e_lng
			t.integer :kct, :null => false
			t.integer :l_kct
			t.integer :stm, :null => false
			t.integer :utm, :null => false
			t.integer :etm
			t.string :sts, :null => false
			t.integer :c_idl
			t.integer :c_low
			t.integer :c_nml
			t.integer :c_hgh
			t.integer :c_ovr
		end

	end

end
