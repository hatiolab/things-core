Ext.define('Base.view.event.Event', {
	
	extend : 'Frx.common.ListView',
	
	xtype : 'base_event',
	
	title : T('menu.Event'),
	
	store : 'Base.store.Event',
	
	columns : [
		{ header : T('label.id'), dataIndex : 'id', hidden : true },
		{ header : T('label.cid'), dataIndex : 'cid'  },
		{ header : T('label.fid'), dataIndex : 'fid'  },
		{ header : T('label.fvr'), dataIndex : 'fvr'  },
		{ header : T('label.did'), dataIndex : 'did'  },
		{ header : T('label.tid'), dataIndex : 'tid'  },
		{ header : T('label.stm'), dataIndex : 'stm'  },
		{ header : T('label.etm'), dataIndex : 'etm'  },
		{ header : T('label.ctm'), dataIndex : 'ctm'  },
		{ header : T('label.kct'), dataIndex : 'kct', align : 'right'  },
		{ header : T('label.typ'), dataIndex : 'typ'  },
		{ header : T('label.vlc'), dataIndex : 'vlc', align : 'right'  },
		{ header : T('label.svr'), dataIndex : 'svr'  },
		{ header : T('label.lat'), dataIndex : 'lat', align : 'right'  },
		{ header : T('label.lng'), dataIndex : 'lng', align : 'right'  },
		{ header : T('label.gx'), dataIndex : 'gx', align : 'right'  },
		{ header : T('label.gy'), dataIndex : 'gy', align : 'right'  },
		{ header : T('label.gz'), dataIndex : 'gz', align : 'right'  },
		{ header : T('label.vdo'), dataIndex : 'vdo'  },
		{ header : T('label.f_vdo'), dataIndex : 'f_vdo'  },
		{ header : T('label.r_vdo'), dataIndex : 'r_vdo'  },
		{ header : T('label.ado'), dataIndex : 'ado'  },
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