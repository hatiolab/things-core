Ext.define('Base.view.event.Event', {
	
	extend : 'Frx.common.ListView',
	
	xtype : 'base_event',
	
	title : T('menu.Event'),
	
	store : 'Base.store.Event',
	
	columns : [
		//{ header : '#', xtype : 'rownumberer', dataIndex : 'id' },
		{ header : T('label.id'), dataIndex : 'id', width : 180, editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.cid'), dataIndex : 'cid' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.fid'), dataIndex : 'fid' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.fvr'), dataIndex : 'fvr' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.did'), dataIndex : 'did' , editor : { xtype : 'textfield' , maxLength : 32 } },
		{ header : T('label.tid'), dataIndex : 'tid', width : 180  },
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
			header : T('label.etm'), 
			dataIndex : 'etm', 
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
			header : T('label.ctm'), 
			dataIndex : 'ctm', 
			width : 195 ,
			renderer : function(val) {
				if(val) {
					return Ext.Date.format(new Date(val), 'Y-m-d H:i:sO');
				} else {
					return val;
				}
			}
		},
		{ header : T('label.kct'), dataIndex : 'kct', align : 'right', width : 80 },
		{ header : T('label.typ'), dataIndex : 'typ' , width : 80 },
		{ header : T('label.svr'), dataIndex : 'svr', width : 80 },
		{ header : T('label.vlc'), dataIndex : 'vlc', align : 'right', width : 80 },
		{ header : T('label.lat'), dataIndex : 'lat', align : 'right', width : 80 },
		{ header : T('label.lng'), dataIndex : 'lng', align : 'right', width : 80 },
		{ header : T('label.gx'), dataIndex : 'gx', align : 'right', width : 80 },
		{ header : T('label.gy'), dataIndex : 'gy', align : 'right', width : 80 },
		{ header : T('label.gz'), dataIndex : 'gz', align : 'right', width : 80 },
		{ xtype: 'actioncolumn', icon: 'assets/std/iconSlideshow.png', itemId : 'vdo', width : 30, align : 'center' },
		{ header : T('label.vdo'), dataIndex : 'vdo', width : 350, editor : { xtype : 'textfield' , maxLength : 255 } },
		{ xtype: 'actioncolumn', icon: 'assets/std/iconSlideshow.png', itemId : 'f_vdo', width : 30, align : 'center' },
		{ header : T('label.f_vdo'), dataIndex : 'f_vdo', width : 350, editor : { xtype : 'textfield' , maxLength : 255 } },
		{ xtype: 'actioncolumn', icon: 'assets/std/iconSlideshow.png', itemId : 'r_vdo', width : 30, align : 'center' },
		{ header : T('label.r_vdo'), dataIndex : 'r_vdo', width : 350, editor : { xtype : 'textfield' , maxLength : 255 } },
		{ xtype: 'actioncolumn', icon: 'assets/std/iconSlideshow.png', itemId : 'ado', width : 30, align : 'center' },
		{ header : T('label.ado'), dataIndex : 'ado', width : 350, editor : { xtype : 'textfield' , maxLength : 255 } }
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
		items : [/*'->', 'import', 'export', 'add', 'save', 'delete'*/]
	} ]
});