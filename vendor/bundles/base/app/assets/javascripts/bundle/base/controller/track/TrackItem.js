/**
 * TrackDetail controller
 */
Ext.define('Base.controller.track.TrackItem', {
	
	extend : 'Frx.controller.ItemController',
	
	requires : [ 
		'Base.model.Track', 
		'Base.store.Track', 
		'Base.view.track.TrackItem'
	],
	
	mixins : [
		'Frx.mixin.lifecycle.FormLifeCycle'
	],
	
	models : ['Base.model.Track'],
			
	stores : ['Base.store.Track'],
	
	views : ['Base.view.track.TrackItem'],
	
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_track_item' : this.EntryPoint(),
			'base_track_form' : this.FormEventHandler()
		});
	},
	
	/****************************************************************
	 ** 					여기는 customizing area 				   **
	 ****************************************************************/
	// Customized code here ...
	
	/****************************************************************
	 ** 					Override 구현 						   **
	 ****************************************************************/

	
	/****************************************************************
	 ** 					abstract method, 필수 구현 				   **
	****************************************************************/

});