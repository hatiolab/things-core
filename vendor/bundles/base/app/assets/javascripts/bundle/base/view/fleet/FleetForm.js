Ext.define('Base.view.fleet.FleetForm', {
	
	extend : 'Ext.form.Panel',
	
	xtype : 'base_fleet_form',
	
	title : T('title.basic_info'),
		
	autoScroll : true,
	
	defaults : { xtype : 'textfield', anchor : '100%' },
	
	items : [
		{ name : 'id', fieldLabel : T('label.id'), hidden : true },
		{ name : 'customer_id', fieldLabel : T('label.customer_id'), allowBlank : false },
		{ name : 'device_name', fieldLabel : T('label.device_name') },
		{ name : 'device_model', fieldLabel : T('label.device_model') },
		{ name : 'driver_id', fieldLabel : T('label.driver_id'), allowBlank : false },
		{ name : 'driver_name', fieldLabel : T('label.driver_name'), allowBlank : false },
		{ name : 'driver_email', fieldLabel : T('label.driver_email') },
		{ name : 'driver_addr', fieldLabel : T('label.driver_addr') },
		{ name : 'driver_image', fieldLabel : T('label.driver_image') },
		{ name : 'car_no', fieldLabel : T('label.car_no') },
		{ name : 'car_model', fieldLabel : T('label.car_model') },
		{ name : 'car_image', fieldLabel : T('label.car_image') },
		{ name : 'group_id', fieldLabel : T('label.group_id') },
		{ name : 'purchase_date', fieldLabel : T('label.purchase_date') },
		{ name : 'reg_date', fieldLabel : T('label.reg_date') },
		{ name : 'lat', fieldLabel : T('label.lat'), xtype : 'numberfield' },
		{ name : 'lng', fieldLabel : T('label.lng'), xtype : 'numberfield' },
		{ name : 'status', fieldLabel : T('label.status'), allowBlank : false },
		{ name : 'trip_id', fieldLabel : T('label.trip_id') },
		{ name : 'last_trip_seq', fieldLabel : T('label.last_trip_seq'), xtype : 'numberfield' },
		{ name : 'last_trip_updated', fieldLabel : T('label.last_trip_updated'), xtype : 'numberfield' },
		{ xtype : 'timestamp' }
	],
	
	dockedItems: [ {
		xtype: 'controlbar',
		items: ['->', 'list', 'save', 'delete']
	} ]
});