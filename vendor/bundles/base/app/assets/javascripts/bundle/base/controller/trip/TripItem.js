/**
 * TripDetail controller
 */
Ext.define('Base.controller.trip.TripItem', {
	
	extend : 'Frx.controller.ItemController',
	
	requires : [ 
		'Base.model.Trip', 
		'Base.store.Trip', 
		'Base.view.trip.TripItem'
	],
	
	mixins : [
		'Frx.mixin.lifecycle.FormLifeCycle'
	],
	
	models : ['Base.model.Trip'],
			
	stores : ['Base.store.Trip'],
	
	views : ['Base.view.trip.TripItem'],
	
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_trip_item' : this.EntryPoint(),
			'base_trip_form' : this.FormEventHandler()
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