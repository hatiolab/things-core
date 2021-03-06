Ext.define('Base.view.diy_report.DiyReportOutParams', {
	
	extend : 'Ext.grid.Panel',
	
	xtype : 'base_diy_report_out_params',
	
	title : T('title.out_parameters'),
	
	initComponent : function() {
		/**
		 *	피상속 클래스의 플러그인 객체와 셀모델 객체는 공유되어서는 안된다.
		 */
		this.plugins = [ Ext.create('Ext.grid.plugin.CellEditing', {
			clicksToEdit : 1,
	        autoCancel : true
		}) ];
		
		this.selModel = Ext.create('Ext.selection.CheckboxModel', { pruneRemoved : false });
		
		this.store = Ext.create('Ext.data.Store', {
			model : 'Base.model.ServiceOutParam',
			data : []
		});

		this.callParent();
	},
	
	columns : [ {
		header : T('label.id'),
		dataIndex : 'id',
		hidden : true
	}, { 
		dataIndex : 'resource_type',
		hidden : true
	}, { 
		dataIndex : 'resource_id',
		hidden : true
	}, { 
		dataIndex : 'rank',
		header : T('label.rank'),
		width : 50,
		align : 'right',
		editor : {
			xtype: 'numberfield'
		}
	}, { 
		dataIndex : 'name',
		header : T('label.name'),
		width : 200,
		editor : {
			xtype : 'textfield',
			allowBlank : false
		}
	}, { 
		dataIndex : 'description',
		header : T('label.description'),
		flex : 1,
		editor : {
			xtype : 'textfield'
		}
	} ],
	
	dockedItems: [ {
		xtype: 'controlbar',
		items: ['->', 'list', 'add', 'save', 'delete']
	} ],

	setRecord : function(record) {
		this.store.loadRawData(record.get('service_out_params'));
	}
});