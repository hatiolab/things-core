/**
 * Trip controller
 */
Ext.define('Base.controller.trip.Trip', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Trip', 
		'Base.store.Trip', 
		'Base.view.trip.Trip' 
	],
	
	models : ['Base.model.Trip'],
			
	stores : ['Base.store.Trip'],
	
	views : ['Base.view.trip.Trip'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_trip' : this.EntryPoint(),
			'base_trip #goto_item' : {
				click : this.onGotoItem
			}
		});
	}

});