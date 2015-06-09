Ext.define('Base.view.trip.TripForm', {
	
	extend : 'Ext.form.Panel',
	
	xtype : 'base_trip_form',
	
	title : T('title.basic_info'),
		
	autoScroll : true,
	
	defaults : { xtype : 'textfield', anchor : '100%' },
	
	items : [
		{ name : 'id', fieldLabel : T('label.id'), hidden : true },
		{ name : 'cid', fieldLabel : T('label.cid'), allowBlank : false, maxLength : 32 },
		{ name : 'fid', fieldLabel : T('label.fid'), allowBlank : false, maxLength : 32 },
		{ name : 'fvr', fieldLabel : T('label.fvr'), allowBlank : false, maxLength : 32 },
		{ name : 'did', fieldLabel : T('label.did'), allowBlank : false, maxLength : 32 },
		{ name : 's_lat', fieldLabel : T('label.s_lat'), xtype : 'numberfield' },
		{ name : 's_lng', fieldLabel : T('label.s_lng'), xtype : 'numberfield' },
		{ name : 'lat', fieldLabel : T('label.lat'), xtype : 'numberfield' },
		{ name : 'lng', fieldLabel : T('label.lng'), xtype : 'numberfield' },
		{ name : 'e_lat', fieldLabel : T('label.e_lat'), xtype : 'numberfield' },
		{ name : 'e_lng', fieldLabel : T('label.e_lng'), xtype : 'numberfield' },
		{ name : 'kct', fieldLabel : T('label.kct'), xtype : 'numberfield' },
		{ name : 'l_kct', fieldLabel : T('label.l_kct'), xtype : 'numberfield' },
		{ name : 'stm', fieldLabel : T('label.stm'), xtype : 'numberfield' },
		{ name : 'utm', fieldLabel : T('label.utm'), xtype : 'numberfield' },
		{ name : 'etm', fieldLabel : T('label.etm'), xtype : 'numberfield' },
		{ name : 'sts', fieldLabel : T('label.sts'), allowBlank : false },
		{ name : 'c_idl', fieldLabel : T('label.c_idl'), xtype : 'numberfield' },
		{ name : 'c_low', fieldLabel : T('label.c_low'), xtype : 'numberfield' },
		{ name : 'c_nml', fieldLabel : T('label.c_nml'), xtype : 'numberfield' },
		{ name : 'c_hgh', fieldLabel : T('label.c_hgh'), xtype : 'numberfield' },
		{ name : 'c_ovr', fieldLabel : T('label.c_ovr'), xtype : 'numberfield' },
		{ xtype : 'timestamp' }
	],
	
	dockedItems: [ {
		xtype: 'controlbar',
		items: ['->', 'list', 'save', 'delete']
	} ]
});