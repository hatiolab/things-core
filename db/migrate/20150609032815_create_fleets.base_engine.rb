# This migration comes from base_engine (originally 20150609031850)
class CreateFleets < ActiveRecord::Migration

	def change
		create_table :fleets do |t|
			t.string :customer_id, :null => false, :limit => 32
			t.string :device_name, :limit => 32
			t.string :device_model, :limit => 32
			t.string :driver_id, :null => false, :limit => 32
			t.string :driver_name, :null => false, :limit => 32
			t.string :driver_email, :limit => 32
			t.string :driver_addr, :limit => 32
			t.string :driver_image, :limit => 255
			t.string :car_no, :limit => 32
			t.string :car_model, :limit => 32
			t.string :car_image, :limit => 255
			t.string :group_id, :limit => 32
			t.string :purchase_date, :limit => 10
			t.string :reg_date, :limit => 10
			t.float :lat, :null => false
			t.float :lng, :null => false
			t.string :status, :null => false
			t.string :trip_id, :limit => 32
			t.integer :last_trip_seq
			t.date :last_trip_updated
			t.userstamps
			t.timestamps
		end

		add_index :fleets, [:id,:customer_id], :unique => true, :name => :ix_fleets_0
		add_index :fleets, [:driver_id], :name => :ix_fleets_1
	end

end
