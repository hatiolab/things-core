/**
 * EventDetail controller
 */
Ext.define('Base.controller.event.EventItem', {
	
	extend : 'Frx.controller.ItemController',
	
	requires : [ 
		'Base.model.Event', 
		'Base.store.Event', 
		'Base.view.event.EventItem'
	],
	
	mixins : [
		'Frx.mixin.lifecycle.FormLifeCycle'
	],
	
	models : ['Base.model.Event'],
			
	stores : ['Base.store.Event'],
	
	views : ['Base.view.event.EventItem'],
	
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_event_item' : this.EntryPoint(),
			'base_event_form' : this.FormEventHandler()
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