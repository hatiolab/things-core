Ext.define('Base.view.track.Track', {
	
	extend : 'Frx.common.ListView',
	
	xtype : 'base_track',
	
	title : T('menu.Track'),
	
	store : 'Base.store.Track',
	
	columns : [
		//{ header : '#', xtype : 'rownumberer', dataIndex : 'id' },
		{ header : T('label.id'), dataIndex : 'id', width : 150 },
		{ header : T('label.cid'), dataIndex : 'cid' , editor : { xtype : 'textfield' , maxLength : 16 } },
		{ header : T('label.fid'), dataIndex : 'fid' , editor : { xtype : 'textfield' , maxLength : 16 } },
		{ header : T('label.fvr'), dataIndex : 'fvr' , editor : { xtype : 'textfield' , maxLength : 16 } },
		{ header : T('label.tid'), dataIndex : 'tid' , editor : { xtype : 'textfield' , maxLength : 16 } },
		{ header : T('label.did'), dataIndex : 'did' , editor : { xtype : 'textfield' , maxLength : 16 } },
		{ header : T('label.stm'), dataIndex : 'stm' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.ttm'), dataIndex : 'ttm' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.ctm'), dataIndex : 'ctm' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.kct'), dataIndex : 'kct', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.vlc'), dataIndex : 'vlc', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.a_vlc'), dataIndex : 'a_vlc', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.dst'), dataIndex : 'dst', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.lat'), dataIndex : 'lat', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.lng'), dataIndex : 'lng', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.p_lat'), dataIndex : 'p_lat', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.p_lng'), dataIndex : 'p_lng', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.gx'), dataIndex : 'gx', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.gy'), dataIndex : 'gy', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.gz'), dataIndex : 'gz', align : 'right' , editor : { xtype : 'numberfield' } },
		{ header : T('label.f_img'), dataIndex : 'f_img' , editor : { xtype : 'textfield' , maxLength : 255 } },
		{ header : T('label.r_img'), dataIndex : 'r_img' , editor : { xtype : 'textfield' , maxLength : 255 } },
	],	
	
	dockedItems : [ {
		xtype : 'searchform',
		items : [{
			fieldLabel: T('fid'),
			name: 'fid-eq'
		}, {
			fieldLabel: T('label.fvr'),
			name: 'fvr-like'
		}, {
			fieldLabel: T('label.did'),
			name: 'did-like'
		}, {
			fieldLabel: T('label.tid'),
			name: 'tid-like'
		}]
	}, {
		xtype : 'controlbar',
		items : ['->', 'import', 'export', 'add', 'save', 'delete']
	} ]
});