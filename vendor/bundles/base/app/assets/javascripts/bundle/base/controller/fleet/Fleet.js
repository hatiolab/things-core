/**
 * Fleet controller
 */
Ext.define('Base.controller.fleet.Fleet', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Fleet', 
		'Base.store.Fleet', 
		'Base.view.fleet.Fleet' 
	],
	
	models : ['Base.model.Fleet'],
			
	stores : ['Base.store.Fleet'],
	
	views : ['Base.view.fleet.Fleet'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_fleet' : this.EntryPoint(),
			'base_fleet #goto_item' : {
				click : this.onGotoItem
			}
		});
	}

});