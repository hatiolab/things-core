/**
 * FleetDetail controller
 */
Ext.define('Base.controller.fleet.FleetItem', {
	
	extend : 'Frx.controller.ItemController',
	
	requires : [ 
		'Base.model.Fleet', 
		'Base.store.Fleet', 
		'Base.view.fleet.FleetItem'
	],
	
	mixins : [
		'Frx.mixin.lifecycle.FormLifeCycle'
	],
	
	models : ['Base.model.Fleet'],
			
	stores : ['Base.store.Fleet'],
	
	views : ['Base.view.fleet.FleetItem'],
	
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_fleet_item' : this.EntryPoint(),
			'base_fleet_form' : this.FormEventHandler()
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