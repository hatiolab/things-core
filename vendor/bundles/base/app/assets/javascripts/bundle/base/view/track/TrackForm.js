Ext.define('Base.view.track.TrackForm', {
	
	extend : 'Ext.form.Panel',
	
	xtype : 'base_track_form',
	
	title : T('title.basic_info'),
		
	autoScroll : true,
	
	defaults : { xtype : 'textfield', anchor : '100%' },
	
	items : [
		{ name : 'id', fieldLabel : T('label.id'), hidden : true },
		{ name : 'cid', fieldLabel : T('label.cid'), allowBlank : false, maxLength : 16 },
		{ name : 'fid', fieldLabel : T('label.fid'), allowBlank : false, maxLength : 16 },
		{ name : 'fvr', fieldLabel : T('label.fvr'), allowBlank : false, maxLength : 16 },
		{ name : 'tid', fieldLabel : T('label.tid'), allowBlank : false, maxLength : 16 },
		{ name : 'did', fieldLabel : T('label.did'), allowBlank : false, maxLength : 16 },
		{ name : 'stm', fieldLabel : T('label.stm'), allowBlank : false, maxLength : 32 },
		{ name : 'ttm', fieldLabel : T('label.ttm'), allowBlank : false, maxLength : 32 },
		{ name : 'ctm', fieldLabel : T('label.ctm'), allowBlank : false, maxLength : 32 },
		{ name : 'kct', fieldLabel : T('label.kct'), xtype : 'numberfield' },
		{ name : 'vlc', fieldLabel : T('label.vlc'), xtype : 'numberfield' },
		{ name : 'a_vlc', fieldLabel : T('label.a_vlc'), xtype : 'numberfield' },
		{ name : 'dst', fieldLabel : T('label.dst'), xtype : 'numberfield' },
		{ name : 'lat', fieldLabel : T('label.lat'), xtype : 'numberfield' },
		{ name : 'lng', fieldLabel : T('label.lng'), xtype : 'numberfield' },
		{ name : 'p_lat', fieldLabel : T('label.p_lat'), xtype : 'numberfield' },
		{ name : 'p_lng', fieldLabel : T('label.p_lng'), xtype : 'numberfield' },
		{ name : 'gx', fieldLabel : T('label.gx'), xtype : 'numberfield' },
		{ name : 'gy', fieldLabel : T('label.gy'), xtype : 'numberfield' },
		{ name : 'gz', fieldLabel : T('label.gz'), xtype : 'numberfield' },
		{ name : 'f_img', fieldLabel : T('label.f_img'), maxLength : 255 },
		{ name : 'r_img', fieldLabel : T('label.r_img'), maxLength : 255 },
		{ xtype : 'timestamp' }
	],
	
	dockedItems: [ {
		xtype: 'controlbar',
		items: ['->', 'list', 'save', 'delete']
	} ]
});