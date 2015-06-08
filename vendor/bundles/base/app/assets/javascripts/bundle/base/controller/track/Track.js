/**
 * Track controller
 */
Ext.define('Base.controller.track.Track', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Track', 
		'Base.store.Track', 
		'Base.view.track.Track' 
	],
	
	models : ['Base.model.Track'],
			
	stores : ['Base.store.Track'],
	
	views : ['Base.view.track.Track'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_track' : this.EntryPoint(),
			'base_track #goto_item' : {
				click : this.onGotoItem
			}
		});
	}

});