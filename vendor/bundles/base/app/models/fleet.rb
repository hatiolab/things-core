class Fleet < ActiveRecord::Base

	stampable

	strip_cols [:customer_id]

	validates_presence_of :customer_id,:driver_id,:driver_name,:lat,:lng,:status, :strict => true

	validates_uniqueness_of :updated_at, :strict => true, :scope => [:id,:customer_id,:device_name,:device_model,:driver_id,:driver_name,:driver_email,:driver_addr,:driver_image,:car_no,:car_model,:car_image,:group_id,:purchase_date,:reg_date,:lat,:lng,:status,:trip_id,:last_trip_seq,:last_trip_updated,:creator_id,:created_at,:updater_id]


end
