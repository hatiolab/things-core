Ext.define('Base.model.Fleet', {
    
	extend : 'Ext.data.Model',
    
	fields : [
		{ name : 'id', type : 'string' },
		{ name : 'customer_id', type : 'string' },
		{ name : 'device_name', type : 'string' },
		{ name : 'device_model', type : 'string' },
		{ name : 'driver_id', type : 'string' },
		{ name : 'driver_name', type : 'string' },
		{ name : 'driver_email', type : 'string' },
		{ name : 'driver_addr', type : 'string' },
		{ name : 'driver_image', type : 'string' },
		{ name : 'car_no', type : 'string' },
		{ name : 'car_model', type : 'string' },
		{ name : 'car_image', type : 'string' },
		{ name : 'group_id', type : 'string' },
		{ name : 'purchase_date', type : 'string' },
		{ name : 'reg_date', type : 'string' },
		{ name : 'lat', type : 'float' },
		{ name : 'lng', type : 'float' },
		{ name : 'status', type : 'string' },
		{ name : 'trip_id', type : 'string' },
		{ name : 'last_trip_seq', type : 'integer' },
		{ name : 'last_trip_updated', type : 'date' },
		{ name : 'creator_id', type : 'string' },
		{ name : 'creator', type : 'auto' },
		{ name : 'created_at', type : 'date' },
		{ name : 'updater_id', type : 'string' },
		{ name : 'updater', type : 'auto' },
		{ name : 'updated_at', type : 'date' },
		{ name : '_cud_flag_', type : 'string' }
	],

	validations : [
		{ type : 'presence', field : 'customer_id' },
		{ type : 'presence', field : 'driver_id' },
		{ type : 'presence', field : 'driver_name' },
		{ type : 'presence', field : 'lat' },
		{ type : 'presence', field : 'lng' },
		{ type : 'presence', field : 'status' },
	],
	
  	proxy : {
		type : 'rest',
		url : 'fleets',
		format : 'json',
	    reader : {
			type : 'json'
        },
        writer : {
			type : 'json',
			root : 'fleet'
        }
	}
});