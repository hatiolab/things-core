/**
 * Event controller
 */
Ext.define('Base.controller.event.Event', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Event', 
		'Base.store.Event', 
		'Base.view.event.Event' 
	],
	
	models : ['Base.model.Event'],
			
	stores : ['Base.store.Event'],
	
	views : ['Base.view.event.Event'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_event' : this.EntryPoint(),
			'base_event #goto_item' : {
				click : this.onGotoItem
			}
		});
	}

});