Ext.define('Base.view.fleet.Fleet', {
	
	extend : 'Frx.common.ListView',
	
	xtype : 'base_fleet',
	
	title : T('menu.Fleet'),
	
	store : 'Base.store.Fleet',
	
	columns : [
		{ header : T('label.id'), dataIndex : 'id' },
		{ header : T('label.customer_id'), dataIndex : 'customer_id' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.device_name'), dataIndex : 'device_name' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.device_model'), dataIndex : 'device_model' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.driver_id'), dataIndex : 'driver_id' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.driver_name'), dataIndex : 'driver_name' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.driver_email'), dataIndex : 'driver_email' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.driver_addr'), dataIndex : 'driver_addr' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.driver_image'), dataIndex : 'driver_image' , editor : { xtype : 'textfield' , maxLength : 255 } },
		{ header : T('label.car_no'), dataIndex : 'car_no' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.car_model'), dataIndex : 'car_model' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.car_image'), dataIndex : 'car_image' , editor : { xtype : 'textfield' , maxLength : 255 } },
		{ header : T('label.group_id'), dataIndex : 'group_id' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.purchase_date'), dataIndex : 'purchase_date' , editor : { xtype : 'textfield' , maxLength : 10 } },
		{ header : T('label.reg_date'), dataIndex : 'reg_date' , editor : { xtype : 'textfield' , maxLength : 10 } },
		{ header : T('label.lat'), dataIndex : 'lat' , editor : { xtype : 'numberfield' } },
		{ header : T('label.lng'), dataIndex : 'lng' , editor : { xtype : 'numberfield' } },
		{ header : T('label.status'), dataIndex : 'status' , editor : { xtype : 'textfield' , maxLength : 10 } },
		{ header : T('label.trip_id'), dataIndex : 'trip_id' , editor : { xtype : 'textfield' , maxLength : 10 } },
		{ header : T('label.last_trip_seq'), dataIndex : 'last_trip_seq' , editor : { xtype : 'numberfield' } },
		{ 
			header : T('label.last_trip_updated'), 
			dataIndex : 'last_trip_updated' , 
			editor : { xtype : 'numberfield' },
			renderer : function(val) {
				if(val) {
					return Ext.Date.format(new Date(val), 'Y-m-d H:i:sO');
				} else {
					return val;
				}
			}
		}
	],	
	
	dockedItems : [ {
		xtype : 'searchform',
		items : [
			{ name : 'id-eq', fieldLabel : T('label.id')},
			{ name : 'status-like', fieldLabel : T('label.status')},
			{ name : 'car_no-like', fieldLabel : T('label.car_no')},
			{ name : 'driver_name-like', fieldLabel : T('label.driver_name')}
		]
	}, {
		xtype : 'controlbar',
		items : ['->', /*'import', 'export',*/ 'add', 'save', 'delete']
	} ]
});