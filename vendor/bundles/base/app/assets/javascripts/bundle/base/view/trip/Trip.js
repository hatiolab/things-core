Ext.define('Base.view.trip.Trip', {
	
	extend : 'Frx.common.ListView',
	
	xtype : 'base_trip',
	
	title : T('menu.Trip'),
	
	store : 'Base.store.Trip',
	
	columns : [
		//{ header : '#', xtype : 'rownumberer', dataIndex : 'id' },
		{ header : T('label.id'), dataIndex : 'id', width : 180, editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.cid'), dataIndex : 'cid' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.fid'), dataIndex : 'fid' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.fvr'), dataIndex : 'fvr' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.did'), dataIndex : 'did' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.s_lat'), dataIndex : 's_lat', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ header : T('label.s_lng'), dataIndex : 's_lng', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ header : T('label.lat'), dataIndex : 'lat', align : 'right' , width : 80, editor : { xtype : 'numberfield' } },
		{ header : T('label.lng'), dataIndex : 'lng', align : 'right' , width : 80, editor : { xtype : 'numberfield' } },
		{ header : T('label.e_lat'), dataIndex : 'e_lat', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ header : T('label.e_lng'), dataIndex : 'e_lng', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ header : T('label.kct'), dataIndex : 'kct', align : 'right' , width : 80, editor : { xtype : 'numberfield' } },
		{ header : T('label.l_kct'), dataIndex : 'l_kct', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ 
			header : T('label.stm'), 
			dataIndex : 'stm', 
			width : 195 , 
			renderer : function(val) {
				if(val) {
					return Ext.Date.format(new Date(val), 'Y-m-d H:i:sO');
				} else {
					return val;
				}
			}
		},
		{ 
			header : T('label.utm'), 
			dataIndex : 'utm', 
			width : 195,
			renderer : function(val) {
				if(val) {
					return Ext.Date.format(new Date(val), 'Y-m-d H:i:sO');
				} else {
					return val;
				}
			}
		},
		{ 
			header : T('label.etm'), 
			dataIndex : 'etm', 
			width : 195 ,
			renderer : function(val) {
				if(val) {
					return Ext.Date.format(new Date(val), 'Y-m-d H:i:sO');
				} else {
					return val;
				}
			}
		},
		{ header : T('label.c_idl'), dataIndex : 'c_idl', align : 'right' , width : 100, editor : { xtype : 'numberfield' } },
		{ header : T('label.c_low'), dataIndex : 'c_low', align : 'right' , width : 100,  editor : { xtype : 'numberfield' } },
		{ header : T('label.c_nml'), dataIndex : 'c_nml', align : 'right' , width : 100,  editor : { xtype : 'numberfield' } },
		{ header : T('label.c_hgh'), dataIndex : 'c_hgh', align : 'right' , width : 100,  editor : { xtype : 'numberfield' } },
		{ header : T('label.c_ovr'), dataIndex : 'c_ovr', align : 'right' , width : 100,  editor : { xtype : 'numberfield' } }
	],	
	
	dockedItems : [ {
		xtype : 'searchform',
		items : [
			{ name : 'id-eq', fieldLabel : T('label.id')},
			{ name : 'cid-like', fieldLabel : T('label.cid')},
			{ name : 'fid-like', fieldLabel : T('label.fid')},
			{ name : 'did-like', fieldLabel : T('label.did')}
		]
	}, {
		xtype : 'controlbar',
		items : [/*'->', 'import', 'export', 'add', 'save', 'delete'*/]
	} ]
});